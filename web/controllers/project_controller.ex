defmodule Kobrakai.ProjectController do
  use Kobrakai.Web, :controller
	
	alias Kobrakai.Project


	@projects [
		%Project{
			title: "Digitaler Ikearahmen", date: ~D[2015-03-01], slug: "digitaler-ikearahmen",
			text: ~s(<p>Seit dem Ende meines Studiums und dem Projekt <a href="/decrescendo/">decrescendo</a> habe ich nach einer günstigen Möglichkeit gesucht generative Programme und Versuche nicht nur am Arbeitscomputer zu zeigen, sondern diese auch in meine Umgebung zu integrieren. Vor ein paar Wochen bin ich dann im Internet auf einen ähnlichen Aufbau , wie diesen hier, gestoßen. Leider war dort ein iPad mini verbaut, was nicht wirklich meinen Preisvorstellungen entsprach. Die Idee den Ikea Bilderrahmen zu verwenden gefiel mir aber.</p><p>Um die Kosten zu senken habe ich mir dann anstatt des iPads einen Raspberry Pi im Model A+ besorgt. Dazu einen 8” Display und einige Kabel und schon war der persönliche Mini-Computer fertig. Leider ist der Respberry Pi nicht gerade die stärkste Computereinheit, daher musste ich von meiner bisher verwendeten Software Processing absehen. Diese läuft gekapselt in einer virtualisierten Java Umgebung, die nicht die beste Performance lieferte. Als Alternative kommt nun <a href="http://openframeworks.cc/">openFrameworks</a> zum Einsatz. Dieses Framework basiert auf der Scriptsprache C++ und kann daher als ein lauffähiges Programm exportiert werden, dass unabhängig von virtuellen Umgebungen funktioniert. Zusätzlich dazu lässt sich auch die Grafikkarte zur Berechnung von Sketchdaten nutzen, was selbst aufwendigere 3D Darstellungen flüssig ablaufen lässt.</p><p>Das oben gezeigte Bild ist ein Foto einer ersten Anwendung des Rahmens. Dabei wird über die API von Instagram ein Profil, in dem Falle mein eigenes, ausgelesen und die Bilder auf den Computer heruntergeladen. Danach werden sie in einer Slideshow durchrotiert. Eine anderes Testobjekt war die Implementation dieser Webseite <a href="http://whatcolourisit.scn9a.org/">whatcolourisit.scn9a.org</a>. Doch für solch feine Farbabstufungen ist leider der verwendete Bildschirm nicht geeignet.</p>),
			aside: [
					%{type: :image, src: "/images/1065/big_20150301-_ben8415.jpg", desc: "Bilderrahmen mit Bild aus Instagram"},
					%{type: :image, src: "/images/1066/small_20150301-_ben8402.jpg", desc: "Raspberry Pi und Displayplatine im Bilderrahmen"},
					%{type: :image, src: "/images/1067/small_20150301-_ben8404.jpg", desc: "Bildschirm im Bilderrahmen"}
				]
			},
		%Project{
			title: "Wunderle + Partner Architekten", date: ~D[2015-02-20], slug: "wunderle-partner-architekten", 
			subtitle: "Umgestaltung der Webseite im Zuge einer neuen Partnerschaft",
			text: ~s(<p>Im Zuge der neuen Partnerschaften von Wunderle Architekten und einer doch schon betagten Webseite wurde das Design, in Zusammenarbeit mit Anna-Sophie Meyer, komplett erneuert. Das Redesign sollte die Agentur wieder moderner und mehr am Zeitgeist ausrichten. Mit zwei neuen und jüngeren Partnern and der Seite wird dieser Schritt auch in das Design übertragen. Die Gestaltung ist sehr klar und einfach gehalten. Der Fokus ist klar auf die Architektur gerichtet und Zusatzinformationen halten sich bedeckt. </p><p>Bei der Schrift haben wir uns für die Avenir entschieden. Die Buchstaben der Font haben sehr schöne geometrische Formen, die gut zu dem Architekturkontext passen. Gleichzeitig sind die Einzelformen noch ausgeglichen genug um für eine angenehme Lesbarkeit zu sorgen.</p><p>Hier geht es zur Dummy Webseite: <a href="http://wunderle.kobrakai.de">http://wunderle.kobrakai.de</a></p>),
			aside: [
					%{type: :image, src: "/images/1062/big_wunderle.jpg", desc: ""},
					%{type: :image, src: "/images/1063/small_unbenannt-2.jpg", desc: ""},
					%{type: :image, src: "/images/1061/small_wunderle-alt.png", desc: ""}
				]
			},
		%Project{title: "SENSE (B.A.)", date: ~D[2014-04-25], slug: "sense", 
			subtitle: "Prototyp einer taktilen Werkbank",
			text: ~s(<p>In meiner Bachelorarbeit habe ich mich digitalen Interfaces beschäftigt. Eines der größten Problem der heutigen digitalen Welt ist, meiner Meinung nach, der Mangel an haptischer Interaktion. Selbst Touchscreens, die für die Bedienung mit den Händen gedacht sind, sind nur eine Einbahnstraße für die Eingabe von Informationen. Ein taktiles Feedback digitaler Inhalte ist nur rudimentär vorhanden und durch die Zweidimensionalität unserer Bildschirmtechnologien ist ein Anfassen von digitalen Objekten bisher kaum möglich. Daher war es mein Ziel ein Konzept für ein digitales Interface zu entwickeln, dass darauf aufbaut, dass in Zukunft auch digitale Inhalte auf eine haptische Art erfahrbar sind. Diese Idee wurde am Beispiel einer multifunktionalen Werkbank ausgearbeitet und in einem kurzen Video visualisiert.</p><p>Vor der Arbeit an dem Konzept habe ich mich mit verschiedene Forschungsarbeiten beschäftigt, die in diesem Gebiet vorhanden waren. Dabei ging es vor allem darum einen Überblick zu erhalten, was bereits möglich ist und an welchen Lösungsansätzen andere Leute arbeiten. Diese reichen dabei von einfachen skelettartigen Gerätschaften, die mechanisch die Bewegung der Hände analysieren und einschränken, bis hin zu Ultraschallwellen zur Erzeugung von Druckpunkten im freien Raum. Als zweiten Teil der Recherche habe ich mich auch mit Technologien zur Darstellung von Objekten im freien Raum und der Verarbeitung der Nutzerinteraktion auseinander gesetzt.</p><p>In der Konzeptionsphase war das größte Hindernis sich nicht von der Masse der Möglichkeiten, die ein solcher hypothetischer Prototyp bietet, ablenken zu lassen. Die Hauptaufgabe war es die Vorteile aufzuzeigen, die eine nahezu reale, dreidimensionale und berührbare, Projektion von digitalen Inhalten auf die Interaktion zwischen Mensch und Maschine hat. Um diesen Gedanken zu unterstützen entschied ich mich für die Beispielanwendung einer Werkbank, da vor allem im gestalterischen Prozess von realen Objekten viele Ebenen an Information verloren gehen, sobald man nur noch eine zweidimensionales Abstrakt davon zu sehen bekommt. Gleichzeitig bedarf es trotzdem abstrahierter Information für die Teile des Interfaces, die keinen Mehrwert durch eine dreidimensionale Visualisierung gewinnen. So sind sie für den Nutzer leichter und schneller Aufzunehmen und zu Verarbeiten.</p><p>Die Visualisierung des Konzepts erfolgte in einem Video, dass eine Person zeigt, die an einer vollständig digitalen Werkbank an verschiedenen Stuhldesigns arbeitet. Dabei ist zu sehen, dass der digitale Stuhl auf das Greifen der Person reagiert. Um die haptische Komponente der Interaktion, die visuell nicht darzustellen ist, noch weiter zu unterstreichen, bewegt die Person nicht nur die Stühle, sondern setzt sich zum Ende des Videos auf einen, um Dinge, wie Sitzkomfort und Stabilität, zu testen.</p><p>Die Umsetzung des Videos realisierte ich durch Komposition von mehreren Elementen. Die Person wurde vor Greenscreen aufgenommen, um realistische Bewegungen zu gewährleisten. Die Interfaceelemente wurden in After Effekts erstellt und animiert, während die Stühle in Maya modelliert und animiert wurden.</p><h3>Ausstellung</h3><p>Für die Bachelorausstellung an meiner Hochschule hatte ich die Idee, die im Film verwendeten Interfacelayer als Präsentationsform aufzugreifen. Um den Effekt der schwebenden Layer zu simulieren verwendete ich frei im Raum hängende Plexiglasplatten, die von einem Beamer über Rückprojektion angestrahlt wurden. Erst beim Aufbau viel auf, dass der Beamer, trotz schwarzem Hintergrund, die Betrachter blendet. Dies wurde durch eine Blende zwischen Plexiglas und Beamer gelöst.</p><p><small>Bilder der Ausstellung von <a href="http://www.larsreiners.de/">Lars Reiners</a>.</small></p>),
			aside: [
					%{type: :vimeo, id: "91507538"},
					%{type: :issuu, id: "4898697/8322504"},
					%{type: :image, src: "/images/1012/small_leute2.jpg", desc: "Links eine Person, im Hintergrund sind zwei Plaxiglasplatten zu sehen, die mit einem Video bespielt sind. Der restliche Raum ist dunkel."},
					%{type: :image, src: "/images/1015/small_tisch.jpg", desc: "Hellgraues Buch auf einem Schwarzen Tisch in einem dunklen Raum"}
				]
			},
		%Project{title: "Decrescendo", date: ~D[2013-11-18], slug: "decrescendo", 
			subtitle: "Interaktive Pendelinstallation",
			text: ~s(<p>Das Projekt »decrescendo« ist eine Arbeit aus dem Medialab, das in einer Gruppenarbeit mit Anna-Sophie Meyer entstand. Das Medialab war unsere erste praktische Begegnung mit generativer Gestaltung und der Scriptsprache Processing. Dies ist das Abschlussprojekt des Kurses, in dem wir beide versucht haben, uns mit mehr zu beschäftigen als der dynamischen Generierung von Grafiken. Nach intensiver Recherche anderer Projekte auf dem Gebiet schien jedoch sehr viel schon in einer ähnlichen Weise zu bestehen. Schlussendlich ließen wir uns dann von dem Projekt <a href="https://vimeo.com/54882144">Firewall</a> insprieren und entwickelten ein Installation mit einem Pendel, über das der Betrachter die zeitgleiche akustische und visuelle Darbietung steuern und verändern kann.</p><p>Die technische Seite, die vor allem mein Bereich war, beruht auf drei Teilen. Das Pendel, das über einer Kinect-Kamera verfolgt wurde, wurde in Processing ausgelesen. Die ausgewerteten Koordinaten und Werte wurden dann an Max 6 übergeben, eine grafische Programmierumgebung, die in der Verarbeitung von Musik seine Stärken hat. Von dort wurde dann ein Synthesizerprogramm gesteuert, das den Sound generierte. Die visuelle Verarbeitung geschah bereits in Processing. Dort veränderte das Pendel die Geschwindigkeiten und Größen eines Partikelsystems, das über einen Beamer an die Wand projiziert wurde.</p>),
			aside: [
					%{type: :vimeo, id: "91507538"},
					%{type: :issuu, id: "4898697/8332052"},
					%{type: :image, src: "/images/1021/small_pendel.jpg", desc: "Aluminium Pendel vor einer an die Wand gebeamten Visualisierung"},
					%{type: :image, src: "/images/1022/small_computer.jpg", desc: "Zwei Laptops mit der Software für das Projekt offen"}
				]
			},
		#%Project{title: "Korona Redesign", date: ~D[2013-08-14], slug: "korona-redesign"},
		#%Project{title: "Zombie Ad Infinitum", date: ~D[2013-02-25], slug: "zombie-ad-infinitum"},
		#%Project{title: "3D Arbeiten", date: ~D[2012-11-30], slug: "maya"},
		#%Project{title: "Bleisatz", date: ~D[2012-04-26], slug: "bleisatz"},
		#%Project{title: "Schriftanalyse", date: ~D[2012-01-13], slug: "schriftanalyse"}
	]

  def index(conn, _params) do
    render conn, "index.html", projects: @projects, index: true, title: "Home"
  end

  def show(conn, %{"slug" => slug}) do
		case Enum.find(@projects, fn x -> x.slug === slug end) do
			nil ->
        conn
        |> put_status(404)
        |> put_view(Kobrakai.ErrorView)
        |> render("404.html")

			project ->
				render conn, "show.html", project: project, title: project.title
		end
    
  end
end
