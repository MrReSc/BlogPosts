# Dash to Dock mit GNOME 40

Die beliebte GNOME Shell Erweiterung [Dash to Dock](https://micheleg.github.io/dash-to-dock/) funktioniert bekanntlicher Weise noch nicht auf GNOME 40. Folgend möchte ich euch zeigen, wie ihr die Erweiterung trotzdem auf GNOME 40 nutzen könnt. 

*Hinweis: In dieser Anleitung wird `Dash to Dock` aus eine Quelle kompiliert, die noch nicht stabil ist.*

![](dash_to_dock_1.png)

Seit einigen Monaten arbeitet der Entwickler [Evan Welsh](https://github.com/ewlsh) an der Portierung der Erweiterung auf GNOME 40. Im Pull Request [#1402](https://github.com/micheleg/dash-to-dock/pull/1402) wird auch schon seit Ende März 2021 rege diskutiert und Bugs gemeldet. Ich persönlich nutzte die Erweiterung schon seit anfangs April ohne Probleme, allerdings auch nur mit Standradeinstellungen.

## Kompilieren und installieren
 
### Abhängigkeiten
Um das Stylesheet zu kompilieren, benötigen man eine Implementierung von [SASS](https://de.wikipedia.org/wiki/Sass_(Stylesheet-Sprache)). `Dash to Dock` unterstützt `dart-sass` (`sass`), `sassc`, und `ruby-sass`. Jede Distribution sollte mindestens eine dieser Implementierungen haben. Der Entwickler empfiehlt die Verwendung von `dart-sass` (`sass`) oder `sassc` gegenüber `ruby-sass`, da `ruby-sass` veraltet sei.

```
sudo dnf install sassc
```

Standardmässig versucht `Dash to Dock`, mit `dart-sass` zu bauen. Falls man nicht `dart-sass` verwendet, muss man die SASS-Umgebungsvariable anpassen.

```
export SASS=sassc
# oder...
export SASS=ruby
```

### Kompilieren
Nun kann man die Quelle klonen und mit der beiliegenden `make` Datei kompilieren und installieren.

```
git clone https://github.com/ewlsh/dash-to-dock.git
git checkout -b ewlsh/gnome-40
make
make install
```
Nach dem Installieren muss man sich von der aktuellen Sitzung abmelden und wieder anmelden. Nach dem Anmelden kann `Dash to Dock` in der Applikation `Erweiterung` aktiviert und konfiguriert werden.

![](installed.png)




