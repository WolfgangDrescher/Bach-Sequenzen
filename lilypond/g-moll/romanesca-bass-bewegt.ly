\version "2.18.2"
\include "../template-inline.ly"

rightHandMusic = \relative c'' {
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
			\partial 2
			r8 g b g
			r d f d r es g es
			r b d b r c es c
			r g b g es'2
			d4
		}
	}
>>

basseFondamentale = <<
	\new Voice {
		\relative c' {
			\set Score.barNumberVisibility = #all-bar-numbers-visible
			\set Score.currentBarNumber = #25
			%{ \override NoteHead.style = #'harmonic %}
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
	%{ \new StaffGroup << %}
	<<
		\new PianoStaff \with {
			%{ instrumentName = #"Clavier" %}
			%{ shortInstrumentName = #"Cl." %}
		}
		<<
			\new Staff <<
				\key g \minor
				\rightHandMusic
			>>
			\new Staff <<
				\key g \minor
				\clef "bass"
				\leftHandMusic
			>>
		>>
		\new Staff \with {
			%{ instrumentName = "Basse Fondamentale" %}
			%{ shortInstrumentName = #"B. F." %}
		}
		<<
			\key g \minor
			\clef "bass"
			\basseFondamentale
		>>
	>>
}
