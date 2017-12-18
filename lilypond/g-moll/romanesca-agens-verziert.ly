\version "2.18.2"
\include "../template-inline.ly"

rightHandMusic = \relative c'' {
	%{r2%}
	\partial 2
	<<
		\new Voice {
			\voiceOne
			g'8 r8 r16 \override NoteHead.color = #grey d c b \override NoteHead.color = #black
			a4~ a16 \override NoteHead.color = #grey b c d \override NoteHead.color = #black g,4~ g16 \override NoteHead.color = #grey b as g \override NoteHead.color = #black
			f4~ f16 \override NoteHead.color = #grey g as b \override NoteHead.color = #black es,4~ es16 \override NoteHead.color = #grey g f es \override NoteHead.color = #black
			d4~ d16 \override NoteHead.color = #grey d e fis \override NoteHead.color = #black g4~ g16 b a g
			fis4
		}
		\new Voice {
			\voiceTwo
			b16 d, e fis g4~
			g16 g f! es! d4~ d16 b c d es4~
			es16 es d c b4~ b16 g a! h c4~
			c16 c b! a g4~ g16 g a b c8 cis
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
			< 4 >8 < 3 > < _ >4 < 7 >8 < 6 > < _ >4
			< 4 >8 < 3 > < _ >4 < 7 >8 < 6 > < _ >4
			< 4 >8 < 3 > < _ >4. < 5 >8 < 6 >8 < 6+ >
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
