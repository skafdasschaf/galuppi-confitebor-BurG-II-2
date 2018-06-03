% (c) 2018 by Wolfgang Skala.
% This file is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
% To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/.

\version "2.18.0"

AltoIncipit = \markup {
	"Alto" \hspace #-15 \score {
		\new Staff \with {
			\remove Time_signature_engraver
		} {
			\clef alto s4 \bar empty
		}
		\layout { }
	} \hspace #-1.8
}

ConfiteborAltoNotes = {
	\relative c' {
		\clef treble
		\key c \major \time 4/4 \autoBeamOff \tempoConfitebor
		R1*9 %9
		r2 \mvTr c4\pE^\soloE e %10
		g8. g16 g8 g g fis4 g8
		a fis d a' h16([ a)] g8 r g
		g e c e f2~
		f8[ g16 f] e8[ f] d2
		c4 r r2 %15
		R1*3
		g'4 h a fis8 d
		g8. fis?16 g4 r g8 d %20
		e4 d8 g g([ fis] a4~)
		a8 g h4. a8 c4~
		c h8[ a] g[ a] h c
		g4( fis) e r
		R1*5 %29
		r2 a4. a8 %30
		g4 g8 g f4 f
		e f8 e d4( h'8[ a]
		gis4) a8 a a4( gis8.) a16
		a4 r r2
		R1*2 %36
		r4 r8 e g([ b)] a g
		f e d e f8. as16 g8 f
		e([ d)] c e e4. e8
		d d d e f4. f8 %40
		e4( a4. g16[ fis] g8.) g16
		fis4 fis8 g a4 g8 fis
		g8. g16 g8 h h4 a~
		a8[ g16 fis] g4. fis16[ e] fis8[ g16. a32]
		g8. a16 h8 g g4 fis8.\trill g16 %45
		g4 r r2
		R1*8 %54
		r8 g g g a8. b16 a8 g %55
		f8.([ e16)] d4 r8 a' a a
		b[ g] e[ f16. g32] a8[ f] d[ e16. f32]
		g8[ e] cis[ d16. e32] f8 g a4~
		a8[ b16 a] g4. a16[ g] f4~
		f8[ g16 f] e8[ f16. g32] a8[ b] a g %60
		f4( e)\trill d r\fermata \bar "||" %61 finis
	}
}

ConfiteborAltoLyrics = \lyricmode {
	In con -- %10
	si -- li -- o iu -- sto -- rum et
	con -- gre -- ga -- ti -- o -- ne, et
	con -- gre -- ga -- ti -- o --
	_ _
	ne. %15
	
	Ma -- gna o -- pe -- ra %19
	Do -- mi -- ni: Ex -- qui -- %20
	si -- ta in o --
	mnes vo -- lun -- ta --
	_ _ _ tes
	e -- ius.
	
	Et iu -- %30
	sti -- ti -- a e -- ius
	ma -- net in sae --
	cu -- lum sae -- cu --
	li.
	
	Me -- mo -- ri -- am %37
	fe -- cit mi -- ra -- bi -- li -- um su --
	o -- rum, mi -- se -- ri --
	cors et mi -- se -- ra -- tor %40
	Do -- mi --
	nus. Es -- cam de -- dit ti --
	men -- ti -- bus, ti -- men -- _
	_ _ _
	_ ti -- bus, ti -- men -- ti -- bus %45
	se.
	
	Vir -- tu -- tem o -- pe -- rum su -- %55
	o -- rum an -- nun -- ti --
	a -- _ _ _
	_ _ _ bit po --
	_ _ _
	_ _ pu -- lo %60
	su -- o. %61 finis
}

UtDetIllisAltoNotes = {
	\relative c' {
		\clef treble
		\key f \lydian \time 3/4 \autoBeamOff \tempoUtDetIllis
			\set Score.currentBarNumber = #62
		R2.*42 %103
		\mvTr e4\pE^\soloE e e8 f
		g4. f8 g4 %105
		g f e
		e d f
		g2 f4~
		f e2
		d4 f f %110
		f8([ d)] es4 es
		es?8([ c)] d4 d
		c4. b8[ c d]
		es4 d c
		d4. c8[ d es] %115
		f4 es d
		c c' b~
		b8[ g] a4. b8
		b4 r r
		R2. %120
		a4 a8 g f a
		g2 g4
		r r a
		g f2
		f4 e2 %125
		g2.
		f2 g4
		f( e2)
		f4 r r
		R2.*3 %132
		f4.( g8) a f
		g4 c,2
		f4.( e8) f4 %135
		f4.( g8) a4
		d,4.( e8) f4~
		f8 d \appoggiatura c4 b2
		a4 r a'
		g4. f8 g e %140
		f4 f, f'
		e4. g8 f e
		e4 d d8. e16
		f4. g16[ f] e8[ f]
		g4. a16[ g] f8[ g] %145
		a4. h!16[ a] g8[ a]
		h!4 c f,
		e( d2\trill)
		c4 c' a
		f2^\critnote e4~ %150
		e d2\trill
		c4 r r
		R2.*5 %157
		R2.\fermataMarkup \bar "||" %158 finis
	}
}

UtDetIllisAltoLyrics = \lyricmode {
	Fi -- de -- li -- a %104
	o -- mni -- a %105
	man -- da -- ta
	e -- ius, man --
	da -- ta __
	e --
	ius, con -- fir -- %110
	ma -- ta in
	sae -- cu -- lum
	sae -- _
	_ _ _
	_ _ %115
	_ _ _
	_ _ _
	_ cu --
	li,
	%120
	fa -- cta in ve -- ri --
	ta -- te
	et
	ae -- qui --
	ta -- te, %125
	et
	ae -- qui --
	ta --
	te. %129 finis
	
	Re -- dem -- pti -- %133
	o -- nem
	mi -- sit, %135
	mi -- sit
	po -- pu --
	lo su --
	o, man --
	da -- vit in ae -- %140
	ter -- num, man --
	da -- vit in ae --
	ter -- num, te -- sta --
	men -- _ _
	_ _ _ %145
	_ _ _
	_ _ tum
	su --
	um, te -- sta --
	men -- tum __ %150
	su --
	um. %152 finis
}

% AltoNotes = {
% 	\relative c' {
% 		\clef treble
% 		
% 	}
% }
% 
% AltoLyrics = \lyricmode {
% 
% }