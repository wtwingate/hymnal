\version "2.22.1"
\language "english"

\header {
  title = "Lo, How a Rose E'er Blooming"
  poet = "Theodore Baker"
  composer = "Michael Praetorius"
}

\paper {
  #(set-paper-size "letter")
  top-margin = 0.75\in
  bottom-margin = 0.75\in
  left-margin = 0.75\in
  right-margin = 0.75\in
  markup-system-spacing.padding = #4
  system-system-spacing.padding = #4
}

melody = \relative c'' {
  \key f \major
  \time 5/2
  c2 c4 c d c c2 a |
  bf2 a4 g2 f e4 f2 |
  c'2 c4 c d c c2 a |
  bf2 a4 g2 f e4 f2 |
  \time 4/2
  r4 a g e f d c2 |
  \time 5/2
  r4 c' c c \bar "" \break
  d c c2 a |
  \time 6/2
  bf2 a4 g2 f e4 f1 \bar "|."
}

harmonies = \chordmode {
  f1. c2 d:min |
  bf1 f2:/c c f |
  f1. c2 d:min |
  bf1 f2:/c c f |
  s2 a2:min7 g:7 c |
  s2 f1 c2 d |
  g1:min f2:/c c f1 |
}

verseOne = \lyricmode {
  \set stanza = "1"
  Lo, how a Rose e'er bloom -- ing
  from ten -- der stem hath sprung!
  Of Jes -- se's lin -- eage com -- ing
  as seers of old have sung.
  It came, a blos -- som bright,
  a -- mid the cold of win -- ter,
  when half spent was the night.
}

verseTwo = \lyricmode {
  \set stanza = "2"
  I -- sa -- iah 'twas fore -- told it,
  the Rose I have in mind,
  with Ma -- ry we be -- hold it,
  the Vir -- gin Mo -- ther kind.
  To show God's love a -- right,
  she bore to us a Sa -- vior,
  when half spent was the night.
}

verseThree = \lyricmode {
  \set stanza = "3"
  O Flower, whose fra -- grance ten -- der
  with sweet -- ness fills the air,
  dis -- pel in glo -- rious splen -- dor
  the dark -- ness ev -- ery -- where;
  true man, yet ve -- ry God,
  from sin and death now save us,
  and share our ev -- ery load.
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Voice = "melody" { \melody }
    \new Lyrics \lyricsto "melody" { \verseOne }
    \new Lyrics \lyricsto "melody" { \verseTwo }
    \new Lyrics \lyricsto "melody" { \verseThree }
  >>
  \layout { indent = 0 }
  \midi { \tempo 4 = 100 }
}