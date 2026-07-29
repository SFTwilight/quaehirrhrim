Quaehĩrrh'rĩm Language Project
==============================

> The sacred stories ... are not designed necessarily to provide
> answers but merely to begin to point out directions that can be
> taken. ... Understand that it is not the work of storytellers to
> bring answers to you. ... What we can do is we can tell you stories
> and if you listen to those stories in the sacred manner with an open
> heart, an open mind, open eyes and open ears, those stories will
> speak to you.
>
> -- Wes Fineday, for [CBC News](https://newsinteractives.cbc.ca/longform/a-question-of-legacy-cree-writing-and-the-origin-of-the-syllabics/), June 2020

index of materials
* [`KinSyl.md`](KinSyl.md) -- aultum'shi syllabary, coinciding with Unicode Canadian Syllabics
* [`HirShi.md`](HirShi.md) -- notes on HĩrShi and KanShi ideographic characters
* `docs/` -- sample texts in Quaehĩrrh'rĩm
* `wordlists/` -- vocabulary, CSV format, by part of speech
* `hirshi/` -- lists of KanShi and/or HĩrShi glyphs and readings, CSV format
* `keyboards/` -- *experimental* keyboard layouts for KinSyl (MIT licensed, cf [keyman project](https://github.com/keymanapp/keyboards))

auxiliary indices
* `kinsyl-spread.csv` -- (aiming for) 10 significant words starting with each KinSyl glyph
* `cf-basic-english.csv` -- (aiming for) coverage of the [Ogden Basic English concepts](https://en.wiktionary.org/wiki/Appendix:Basic_English_word_list) with Alu'Rĩm vocabulary
* `cf-toki-pona-frontier.csv` -- (aiming for) coverage of the [Toki Pona concepts](https://lipu-sona.pona.la/en/dictionary/) with Laautep'Alurĩm vocabulary

vocabulary corpus size/target comparisons
* Toki Pona (~120 words, overloaded): https://lipu-sona.pona.la/en/dictionary/ (useful for Laautep'Alurĩm pidgin, comparison with TeiRĩBĩm and Classical Hĩrin'rin concept sets)
* Ogden Basic English (850 words, overloaded): https://en.wiktionary.org/wiki/Appendix:Basic_English_word_list
* Wikipedia Simple English (1000 words, not overloaded): https://simple.wiktionary.org/wiki/Wiktionary:Simple_English_word_list
* Quenya Semantic Categories (~1440 categories, not overloaded): https://jlptsensei.com/jlpt-n5-vocabulary-list/
* JLPT N5 (~800 words, further levels TBD): https://jlptsensei.com/jlpt-n5-vocabulary-list/

misc IT materials {*WIP, currently testing*}
- [ ] {Mac} [Quaehĩrrh'rĩm keyman layout](keyboards/bj_quaehirrhrim.kmn) keyboard extending [East James Bay Cree](https://help.keyman.com/keyboard/bj_cree_east_james_bay/1.2/bj_cree_east_james_bay)
- [ ] {Linux} [fcitx-m17n MIM](keyboards/bj_quaehirrhrim.mim) plus [xkb](keyboards/bj_quaehirrhrim.xkb) version of Quaehĩrrh'rĩm 'East James Bay' layout

misc IT TODOs
- [ ] {Linux} instructions for installing fcitx5-m17n on {Gnome, swaywm}
- [ ] {Linux} fcitx-m17n Hnym'olom ti'chet keyboard with frequency analysis script
- [ ] {Linux} fcitx-m17n phonetic keyboard
- [ ] {Mac} file bug reports for Canadian Syllabics rendering in Emacs, iTerm
- [ ] {Linux} check Canadian Syllabics rendering quality in Emacs, terminals
- [ ] {both} check cloudy-ı̊ rendering quality in Emacs, terminals
- [ ] {both} `hiack.rb`, `teirido.rb` for corpus analysis

supplementary citations
* https://www.rfc-editor.org/rfc/rfc4180 for CSV format
* https://www.random.org/ for atmospheric-noise random values {+ combine with timecube-divination/petal-oracle script and ~~random-syllable selector?~~}
* Canadian Syllabics Unicode block: https://en.wikipedia.org/wiki/Unified_Canadian_Aboriginal_Syllabics (or https://unicodeplus.com/block/1400 or https://unicode-explorer.com/b/1400) and https://fr.wikipedia.org/wiki/Guillemet#Codage
