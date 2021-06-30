# Eine kurze Einführung in Toolbox unter Fedora

[toolbox](https://github.com/containers/toolbox) ermöglicht es dir, deine Entwicklungsumgebungen in Containern zu verwalten, ohne Root-Rechte zu benötigen oder Volumes manuell anzuhängen. Sie erstellt einen Container, in dem du deine eigenen CLI-Tools installieren kannst, ohne sie auf dem Basissystem selbst zu installieren. Du kannst `toolbox` auch nutzen, wenn du keine Root-Rechte hast oder keine Programme direkt installieren kannst. Es baut auf Podman und anderen Standard-Container-Technologien von OCI auf. Dieser Artikel gibt dir eine kurze Einführung in die `toolbox` und was sie macht.

![](logo.png)

## Installation

Bei meiner Installation von Fedora 34 ist `toolbox` bereits installiert. Falls das bei dir nicht der Fall ist, kann mit dem Befehl `sudo dnf install toolbox` die Software installiert werden.

## Toolboxen erstellen

Öffne dein Terminal und führe `toolbox enter` aus. Das Tool wird automatisch die Erlaubnis anfordern, das neueste Image herunterzuladen, deinen ersten Container zu erstellen und deine Shell in diesem Container zu platzieren.

```
remo@fedora ~ $ toolbox enter
No toolbox containers found. Create now? [y/N] y
Image required to create toolbox container.
Download registry.fedoraproject.org/fedora-toolbox:34 (500MB)? [y/N]: y
remo@toolbox ~ $ 
```
Wie man nun am command prompt sieht, befinde ich mich bereits in der `toolbox`.

## Beispiel

Ich möchte euch kurz zeigen, wie man die GNOME Shell Erweiterung `Dash to Dock` aus einem Entwicklungszweig selbst kompiliert, dazu aber nicht die benötigten Werkzeuge auf seinem System installieren muss.

In der `toolbox` hat man normalen Zugriff auf sein Dateisystem. Als Erstes klonen wir nun den Entwicklungszweig in das `Download` Verzeichnis und wechseln danach direkt in das `dash-to-dock` Verzeichnis.

```
remo@toolbox ~ $ cd Downloads/
remo@toolbox ~/Downloads $ git clone https://github.com/ewlsh/dash-to-dock.git
remo@toolbox ~/Downloads $ cd dash-to-dock
```

Als Nächstes müssen wir die benötigten Werkzeuge in der `toolbox` installieren. Dazu kann wie gewohnt der Paketmanager `dnf` benutzt werden. Ein Root-Passwort wird nicht benötigt.

```
sudo dnf install make sassc gettext
```

Nun können wird `dash-to-dock` kompilieren und installieren.

```
remo@toolbox ~/Downloads/dash-to-dock $ make
remo@toolbox ~/Downloads/dash-to-dock $ make install
```

GNOME Shell Erweiterung ist nun installiert. Nach einem An- und Abmelden kann die Erweiterung aktiviert werden.

## Aufräumen

Falls das kompilieren nur eine einmalige Sache war, kann die entsprechende `toolbox` wieder gelöscht werden. Dazu verlässt man zuerst die `toolbox` mit dem Befehl `exit`. Mit `toolbox list` können alle Container angezeigt werden. So findet man den zu Löschenden am einfachsten.

```
remo@toolbox ~/Downloads/dash-to-dock $ exit
logout
remo@fedora ~ $ toolbox list
IMAGE ID      IMAGE NAME                                    CREATED
d8a734db8c5c  registry.fedoraproject.org/fedora-toolbox:34  21 hours ago

CONTAINER ID  CONTAINER NAME     CREATED         STATUS   IMAGE NAME
28aa31a30744  fedora-toolbox-34  19 minutes ago  running  registry.fedoraproject.org/fedora-toolbox:34
remo@fedora ~ $ toolbox rm -f fedora-toolbox-34
```

## Weitere Befehle

Wer sich ein wenig mit Container auskennt, dem kommen alle oben beschriebenen Befehle sehr bekannt vor. In der [Dokumentation](https://docs.fedoraproject.org/en-US/fedora-silverblue/toolbox/) von Fedora Silverblue findet man viele weitere Befehle. 

## Quellen
[https://fedoramagazine.org/a-quick-introduction-to-toolbox-on-fedora/](https://fedoramagazine.org/a-quick-introduction-to-toolbox-on-fedora/)