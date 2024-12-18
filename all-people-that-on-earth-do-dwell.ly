\version "2.22.1"
\language "english"

\header {
  title = "All People That on Earth Do Dwell"
  subtitle = "Psalm 100"
  poet = "William Kethe"
  composer = "Louis Bourgeois"
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
  \key g \major
  \time 4/4
  \partial 2
  g2 |
  g4 fs e d |
  g2 a |
  b2 b |
  b4 b a g |
  c2 b |
  a2 g |
  a4 b a g |
  e2 fs |
  g2 d' |
  b4 g a c |
  b2 a |
  \partial 2
  g2 \bar "|."
}

harmonies = \chordmode {
  \partial 2
  g2 |
  g4 d e:min b:min |
  e2:min d |
  g1 |
  g2 d4 e:min |
  c2 g |
  d2 e:min |
  d4:/fs g d:/a g:/b |
  c2 d |
  e2:min d:/fs |
  g4 e:min d a:min |
  g2:/b d |
  \partial 2
  g2 |
}

verseOne = \lyricmode {
  \set stanza = "1"
  All peo -- ple that on earth do dwell,
  sing to the Lord with cheer -- ful voice:
  him serve with mirth, his praise forth tell,
  come ye be -- fore him and re -- joice.
}

verseTwo = \lyricmode {
  \set stanza = "2"
  Know that the Lord is God in -- deed;
  with -- out our aid he did us make:
  we are his folk, he doth us feed,
  and for his sheep he doth us take.
}

verseThree = \lyricmode {
  \set stanza = "3"
  O en -- ter then his gates with praise,
  ap -- proach with joy his courts un -- to;
  praise, laud, and bless his Name al -- ways,
  for it is seem -- ly so to do.
}

verseFour = \lyricmode {
  \set stanza = "4"
  For why? the Lord our God is good,
  his mer -- cy is for ev -- er sure;
  his truth at all times firm -- ly stood,
  and shall from age to age en -- dure.
}

verseFive = \lyricmode {
  \set stanza = "5"
  To Fa -- ther, Son, and Ho -- ly Ghost,
  the God whom heaven and earth a -- dore,
  from men and from the an -- gel host
  be praise and glo -- ry ev -- er -- more.
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
    \new Lyrics \lyricsto "melody" { \verseFour }
    \new Lyrics \lyricsto "melody" { \verseFive }
  >>
  \layout { indent = 0 }
  \midi { \tempo 4 = 100 }
}