%{
Welcome to LilyPond
===================

Congratulations, LilyPond has been installed successfully.

Now to take it for the first test run.

  1. Save this file

  2. Select

       Compile > Typeset file

  from the menu.

  The file is processed, and

  3.  The PDF viewer will pop up. Click one of the noteheads.


That's it.  For more information, visit http://lilypond.org .

%}
\layout {
  indent = #0
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}
\paper {
 oddFooterMarkup = \markup{ \fill-line{ \line{" "} } }
}
\header{
  title = "Trollträume"
  composer = "Text & Melodie: Isi und kachān"
  arranger = "2. Stimme: Momo"
 %\markup \right-column { \line {Komponist 1} \line {Komponist 2 } \line { Komponist 3 } }
}
\score {
<<
\chords { \time 4/4  \set chordNameLowercaseMinor = ##t  \germanChords
         \partial4 s4   e4:m s2. g4 s2. d4 s2. e4:m s1   s2. g4 s2. d4 s2. e4:m s2. g4 s2. d4 s2. c2 d2 g1 e1:m g1 e2:m d2 e2.:m
 \repeat volta 2 {s4 b1:m/e d1 }\alternative { { a1d1} { a2 b2:7 e1:m}}}
 \relative c' {\key e \minor \time 4/4
 \partial4  b4 e4. e8 e4. e8 b'4. b8 b4. b8 a4 a g fis e2. b4 e4. e8 e4. e8 <<b'4. g4.>> <<b8 g8>> b4 b4 <<d4 a4>> <<d a>> c <<b cis>> <<e,2. b'>> e,4 <<b'4. g>> <<b8 e,>> <<b'4.g>> <<b8 g>> <<d'4a>> <<d a>> <<d4. a>> <<d8 a>> <<e'4 c>> <<e c>> <<d a>> <<c a>> <<d d,>> << b'8 d,>> <<b'4. d,>> <<b'4 g>> e4. e8 e4. e8 <<b'4 d,>> <<b' d,>> <<b'4. d,>> <<b'8 d,>> a'4 a g fis e e2\break
 \repeat volta 2 {e4 b'4. b8 b4 b a g fis4. fis8 }\alternative { { e4 fis  g e fis1} { e4 fis g d e1}}\bar "|."
}
 \addlyrics {Es war ein -- mal ein klei -- ner Troll, der hat -- te ganz viel Spaß er sang und sprang und hüpf -- te rum und wälz -- te sich im Gras. Er troll -- te auf der Wie -- se rum, in Pfü -- tzen macht er'n Pa -- pa nass spielt Strei -- che, ko -- kelt und macht Dreck und al -- le sa -- gen: Lass das!
  %\repeat volta 2 {Doch klei -- ne Trol -- le tun nicht gern, was man zu ih -- nen sagt Sie sin -- gen, tan -- zen, spri -- ngen gern Und das den gan -- zen Tag.}
             
             <<
	{Doch klei -- ne Trol -- le tun nicht gern, was man zu ih -- nen sagt das den gan -- zen Tag. }
	\new Lyrics {
	  \set associatedVoice = "melody"
	 Sie sin -- gen, tan -- zen, spri -- ngen gern und 
	}
 >>}
>>}


