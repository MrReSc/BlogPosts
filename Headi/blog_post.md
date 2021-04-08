# Headi - Aufruf zum Testen

In den letzten zwei Monaten habe ich neben Arbeit und Familie meine erste Android-App gebaut. Der Antrieb dazu war privater Natur und ich habe keinerlei kommerzielle Interessen daran. Ich möchte hier kurz meine Arbeit mit euch Teilen.

![](logo.png)

Headi (Headache Diary) ist eine App um Kopfschmerzen zu protokollieren. Da es sich dabei um sehr sensible Daten handelt, werden keine Daten an irgendwelche Cloud-Dienste übertragen. Alle Daten werden nur lokal gespeichert. Headi benötigt auch keinerlei Berechtigungen vom Benutzer. Headi bietet eine einfache Analyse der aufgezeichneten Daten. Die Aufzeichnungen können als CSV-Datei zur weiteren Analyse der Daten oder als PDF Dokument exportiert werden. Um ein Backup zu erstellen, kann die komplette Datenbank gespeichert werden. Es war mit sehr wichtig, die Daten so einfach wie möglich exportieren zu können.

Damit sicher keine Daten im Internet landen, habe ich auch das von Android angebotene automatische Backup `allowBackup` ab der Version `1.10.1-beta` deaktiviert. Die Version `1.10.1-beta` sollte in einigen Tagen im F-Droid Store erscheinen.

```
<manifest ... >
    ...
    <application android:allowBackup="false" ... >
        ...
    </application>
</manifest>

```

Ich habe die App, dank wertvollen Tipps einiger Redakteure, im F-Droid Store veröffentlicht. In einem weiteren Artikel möchte ich zu einem späteren Zeitpunkt noch die Veröffentlichung im F-Droid Store beleuchten. Allerdings ist die App noch nicht vollständig getestet. Auch gibt es sie erst in deutscher und englischer Sprache.

Es wäre schön, wenn einige von euch die App Installieren würden, und die Funktionen durchtesten oder die App gleich Einsetzten. Feedback und Bug Reports können auf der GitHub Projektseite [https://github.com/MrReSc/Headi](https://github.com/MrReSc/Headi) hinterlassen werden.

[<img src="https://fdroid.gitlab.io/artwork/badge/get-it-on.png" height="125" alt="Get it on F-Droid">](https://f-droid.org/packages/com.headi.app/)

## Beitragen
Headi ist ein Open-Source-Projekt. Die App steht unter der `MIT` Lizenz. Wenn du auch etwas dazu beitragen wills, würde ich mich sehr darüber freuen. Folgend findest du einige Ideen, was du beitragen könntest:

* Headi braucht noch Übersetzungen. Du kannst helfen, Headi in deine Sprache zu übersetzen. Alles, was du tun musst, ist, einen Account bei [Crowdin](https://crwd.in/headi) zu erstellen und die Texte zu übersetzen.
* Weitere Analysen der Daten in der App wären sinnvoll. Wenn du Ideen hast, teile diese doch mit mir. Wenn du programmieren kannst, kannst du sie implementieren.
* Es gibt noch einiges Potenzial, um das Design zu verbessern.
* Wenn du gut zeichnen kannst, wären schönere Bilder für die Regionen auf dem Kopf sehr willkommen.
* Es sind auch noch keine Unit-Tests implementiert worden. Wenn du gerne Tests programmierst, würde ich mich über diese freuen.
* Mit GitHub Actions könnte man CI/CD implementieren. Das wäre auch toll.

Wenn du Hilfe benötigst um einen Beitrag zu Leisten, melde dich doch bei mir.

## Screenshots

<p align="left">
  <img alt="Light" src="1.jpg" width="30%">
    &nbsp; &nbsp; &nbsp; &nbsp;
  <img alt="Dark" src="4.jpg" width="30%">
    &nbsp; &nbsp; &nbsp; &nbsp;
  <img alt="Dark" src="2.jpg" width="30%">
</p>

<p align="left">
  <img alt="Light" src="3.jpg" width="30%">
    &nbsp; &nbsp; &nbsp; &nbsp;
  <img alt="Dark" src="5.jpg" width="30%">
    &nbsp; &nbsp; &nbsp; &nbsp;
  <img alt="Dark" src="6.jpg" width="30%">
</p>

<p align="left">
  <img alt="Light" src="7.jpg" width="30%">
    &nbsp; &nbsp; &nbsp; &nbsp;
  <img alt="Dark" src="8.jpg" width="30%">
</p>

