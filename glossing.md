# (a) Compact Glossing for `wordlists/`

**WIP.** Adopting an entirely homegrown compact-gloss for the
wordlists to keep track of how they break down into TeiRĩBĩm.

basic components
- `N` noun particle (nih'qubĩm) or word (nih'qukap)
- `n` numerical particle (chet'qubĩm) or word (chet'qukap)
- `A` adjectival particle (nĩch{i}f'bĩm) or word (ch{i}'niquh)
- `V` verb particle (re'qubĩm) or verb stem (re'qukap)
- `P` prepositional particle (yan'qubĩm) or word (yan'qukap)
- `p` other/miscellaneous particle or interjection
- `F` indicates ordinary foreign borrowing
- `C` indicates chor{i}ma borrowing (possibly extraversal in origin)
- `+` hints additional separation (doubled consonant or TahBip/apostorphe) between morphemes, e.g.
  - `nirroh N+N` rather than `niroh NN`
  - `fe'hĩm V+N` rather than `fehĩm VN`
- `'` indicates an inflected form (e.g. `fĩm` -> `fĩmi`)
- `(V)` refers to a different/existing dictionary entry

compound word can be glossed with a hint re: the entire word e.g.
- `N:NN` a noun composed of two noun particles
- `V/N:NV` a verb stem that can also works as a noun
- `N{/V}` a noun particle that rarely serves as a verb
... not strictly necessary unless diverging from the obvious norm,
since the wordlist files are marked `nouns`, `verbs` etc.

gloss may often be followed by TeiRĩBĩm decomposition
- `(heko-)` refers to a different/existing dictionary entry
- `(hin+)nim` sequential fusion into one syllable `hnym`
- `hi/hir rin` indicates alternative decomposition `hĩrin` due to BiRĩBĩm
- `qa{/qu}` indicates variant interpretations e.g. `qatei/qutei`
- `che{/chet} mif` indicates alternative decomposition `CheMĩf` due to truncation
- `hir'`, `mif'` indicates modified/derived/inflected morpheme e.g. `hĩrrh`, `mĩfi`
- `hir'~fir` OzhAulHĩr fusion into one syllable `Hfĩrrh`
- `tef~tei` non-lossy fusion into one syllable `Teif`

# (b) Glossing for `docs/`

**WIP.** In the process of working out a glossing system that follows
[Leipzig conventions](https://www.eva.mpg.de/lingua/pdf/Glossing-Rules.pdf) where feasible but retains ease of working
with prosody {represented via TahBip `·` for morpheme linkage},
propering {represented via capitalization}, and nonstandard / TBD
grammar inflections that map poorly onto the default set of
European-language categories.

TODO for review/editing, various minor points to keep in mind
- no `YI` for future aspect -> should be marked as `will`
- HitTahBĩr hyphen `-` is rendered as `--` to distinguish from Leipzig-gloss hyphen
- single-alternative braces e.g. `{Elements}` reference a longer gloss that was done before
notable keywords used in the glosses: general
- `EXCLM`: exclamatory particle e.g. `ya~!`
- `ILIR\`: inflected with chorı̊ma cloudy-i (e.g. `hĩ` becomes `hı̊`)
- `LIKE`: adverbial/comparative `-li`
- `MIDP`: mid-propering prefix `t-` (or `ta-` in archaic dialects)
- `MPROP\`: 'forced' (mantric) propering `᙭`
- `OBJ`: definite object-marker `er-`
- `ORD`: ordinal `-fĩ`
- TBD `PROP\`: propered intonation `᙮` {generally omitted, simple capitalization is used to indicate instead}
- `VBLZ`: `-Ø` zero-derived verbalization (verbing a noun)

notable keywords used in the glosses: verbal aspects
- `AH`: verb aspect `-ah`, TBD
- `AM`: complete verb aspect `-am`
- `AR`: verb aspect `-ar`, TBD
- `ARM`: verb aspect `-arm`, TBD (archaic)
- `EXH₁`: exhortative `-yi`
- `EXH₂`: exhortative-emphatic `-yĩ`
- `IR`: verb/noun continuous-extensive aspect `-ir`
- `IRI`: verb/noun continuous-abiding aspect `-iri`
- `ISH`: chorı̊ma continuous-modifier `-ish-` (used with another aspect)
- `NMLZ`: `-m` or `-Ø` nominalization (nouning a verb), e.g. `yĩm`, `qem`, `rem`, `dani-Ø`
- `OH`: verb aspect `-oh`, TBD
- `OR`: verb aspect `-or`, TBD
- `SH`: chorı̊ma modifier `-sh-` TBD (used with another aspect)
- `SHE`: chorı̊ma correlated clausal-aspect ('for the purpose')
- `SHI`: chorı̊ma co-occurring clausal-aspect
- `YAM`: verb aspect `-yam`, TBD

notable keywords used in the glosses: pronoun precession (indicated e.g. `{PROX.3P/her}` for `teir`)
- `1P`: first person
- `2P`: second person
- `3P`: third person
- `DIST`: distal sphere `ra-`
- `MEDI`: medial sphere `le-`, `la-`, `lu-`
- `PROX`: proximal sphere `te-`, `ta-`, `tu-`

WIP keywords for Aultum noun cases; dialect prefix (`Ch`/`Ei`/`Pa`/?`Hn`)
may be dropped if the text follows a consistent dialect:
- `AluMI`: TBD common/alufĩm'rĩm ?instrumental `-i` (e.g. `mĩf-i`)
- `ChAUT`: autumn case (Chetir'taaum)
- `ChSPR`: spring case (Chetir'taaum)
- `ChSUM`: summer case (Chetir'taaum)
- `ChWIN`: winter case (Chetir'taaum)
- `EiBAK`: Baked case (Eĩ'lirĩm)
- `EiBOI`: Boiled case (Eĩ'lirĩm)
- `EiFRY`: Fried case (Eĩ'lirĩm)
- `EiGRI`: Grilled case (Eĩ'lirĩm)
- `EiPRS`: Preserved nominative case (Eĩ'lirĩm)
- `EiRAW`: raw/uninflected (usually nominative) case (Eĩ'lirĩm)
- `PaBO`: metamorphic case (PaiRĩmr)
- `PaKEI`: igneous case (PaiRĩmr)
- `PaNIH`: sedimentary case (PaiRĩmr)
- ... Hnym'olom cases TBD ...

WIP pool of additional verb/noun aspects
- `IMP`: imperative `-yĩr`
- ... verb aspects `-yĩm`, `-yin`, `-yinaĩ`, `-yineĩ` TBD ...
- ... verb aspects `-yam`, `-yar`, `-yah`, `-yor`, `-yoh` TBD ...
- ... chorı̊ma verb aspects `-ishe`, `-ishi`; likewise with `-ts/ı̊ts-` in 'outdoor' use (`MIRTS\SH`) ...
- ... chorı̊ma verb aspects `-ashe`, `-ashi`, `-ash-`+various TBD; likewise with `-ts-` in 'outdoor' use (`MIRTS\SH`) ...
- ... verb aspects `-im`, `-in` TBD ...

other conventions
- `Sun`: capitalization indicates propering {rather than `PROP\`}
- `A·B`: loose morpheme-prosodic boundary with TahBip `·`
- `A:B`: tight morpheme boundary
- `A-B`: `A` inflected with `B`
- `A-Ø`: non-overt element / zero-derivation
  * typically bare verb stem into noun, e.g. `naĩni-Ø` -> `{nothing/not:be-NMLZ}`
- `{A/B}`: hĩrin'mĩm branches or alternate glosses
- `?PIN`: untranslated or unknown for the time being
- `*that`: ungrammatical / colloqualism / approximate translation
- `!*meat`: neheh'rĩm / odd or improper usage
