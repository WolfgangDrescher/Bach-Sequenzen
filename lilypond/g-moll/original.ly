\version "2.18.2"
\include "../template-inline.ly"

rightHandMusic = \relative c'' {
	%{r2%}
	\partial 2
	<<
		\new Voice {
			\voiceOne
			g'8 r8 r16 d c b
			a4~ a16 b c d g,4~ g16 b as g
			f4~ f16 g as b es,4~ es16 g f es
			d4~ d16 d e fis g4~ g16 b a g
			fis4
		}
		\new Voice {
			\voiceTwo
			b16 d, e fis g4~
			g16 g f! es! d4~ d16 b c d es4~
			es16 es d c b4~ b16 g a! b c4~
			c16 c b! a g4~ g16 g a b c8 cis
			d4
		}
	>>
}

leftHandMusic = \relative c {
	\set Score.barNumberVisibility = #all-bar-numbers-visible
	\set Score.currentBarNumber = #25
	%{r2%}
	\partial 2
	g8 g'16 a b8 a16 g
	d'8 d,16 es f8 es16 d es,8 es'16 f g8 f16 es
	b'8 b,16 c d8 c16 b c,8 c'16 d es8 d16 c
	g'8 g,16 a b8 a16 g es'2
	d4
}

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
