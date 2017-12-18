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
			\override NoteHead.color = #grey g,8 \override NoteHead.color = #black g'16 a b8 a16 g
			\override NoteHead.color = #grey d'8 \override NoteHead.color = #black d,16 es f8 es16 d \override NoteHead.color = #grey es,8 \override NoteHead.color = #black es'16 f g8 f16 es
			\override NoteHead.color = #grey b'8 \override NoteHead.color = #black b,16 c d8 c16 b \override NoteHead.color = #grey c,8 \override NoteHead.color = #black c'16 d es8 d16 c
			\override NoteHead.color = #grey g'8 \override NoteHead.color = #black g,16 a b8 a16 g es'2
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
