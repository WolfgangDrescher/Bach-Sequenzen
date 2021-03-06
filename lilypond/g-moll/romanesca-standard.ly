\version "2.18.2"
\include "../template-inline.ly"

rightHandMusic = \relative c'' {
	%{r2%}
	\partial 2
	<<
		\new Voice {
			\voiceOne
			g'4 b,
			a2 g
			f es
			d g
			fis4
		}
		\new Voice {
			\voiceTwo
			b4 g~
			g f2 es4~
			es d2 c4~
			c b2 c8 cis
			d4
		}
	>>
}

leftHandMusic = <<
	\new Voice {
		\relative c' {
			\set Score.barNumberVisibility = #all-bar-numbers-visible
			\set Score.currentBarNumber = #25
			%{r2%}
			\partial 2
			g2
			d es
			b c
			g es'2
			d4
		}
	}
	\new FiguredBass {
		\figuremode {
			< _ >2
			< 4 >4 < 3 > < 9 > < 8 >
			< 4 > < 3 > < 9 > < 8 >
			< 4 > < 3 > < 5 > < 6 >8 < 6+ >
			< _+ >4
		}
	}
>>

\score {
	\new PianoStaff <<
		\new Staff = "Rechte Hand"  <<
			\key g \minor
			\rightHandMusic
		>>
		\new Staff = "Linke Hand" <<
			\key g \minor
			\clef "bass"
			\leftHandMusic
		>>
	>>
}
