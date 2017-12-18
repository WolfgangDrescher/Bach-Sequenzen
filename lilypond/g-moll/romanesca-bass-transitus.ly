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
			r8 g16 a b8 a16 g
			r8 d16 es f8 es16 d r8 es16 f g8 f16 es
			r8 b16 c d8 c16 b r8 c16 d es8 d16 c
			r8 g16 a b8 a16 g es'2
			d4
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
