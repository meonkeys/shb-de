# Dear Reviewer

**THANK YOU**! ❤️🧡💛💚💙💜

Here's my book so far. I should say *our* book because after quite a bit of writing I'm learning that this doesn't happen in isolation. It really does take a team. And hey, you're on the team! You are an expert and I value your help. I will benefit greatly from your open, honest feedback.

The review deadline was Nov 24, 2023, but I'm running a bit late. If you still have comments, send them over!

Please send me feedback in any form: email, text, PRs... whatever is most convenient. Anything helps. I've got a thick skin so just let me have it as if you're reviewing a book from a complete stranger.

I made a list of issues below to capture stuff I'm already aware of and working on. As for what kinds of feedback I'm seeing, please see [Feedback ideas](#feedback-ideas), below.

I'd like to wait to release everything publicly once it is ready, so please help me keep it secret for now.

If you want/need to be paid to do this, please let me know. We'll work something out.

I'm looking for testimonials! Ping me if you're up for this.

## Directory structure

| path       | description                           |
|------------|---------------------------------------|
| `book/`    | sources for the book                  |
| `mario/`   | sources for _mario_ provisioning tool |
| `website/` | sources for https://selfhostbook.com/ |

## Book formats

[Download PDF, HTML, EPUB, MOBI, and FB2 versions here](https://github.com/meonkeys/shb-review/releases/).

## Feedback ideas

By _feedback_ I mean, well, anything you're willing and able to help with!

Here are some ideas:

* What are your first impressions? Cover, table of contents, font, style, page size, book length, etc.
* Any/all factual, spelling, grammatical, and structural errors.
* Overall manuscript critique, comprehensive or line edits, copy-editing, proofreading.
* Inscrutable thrust of a section. Does it make sense what I'm trying to convey and how?
* Inconsistencies in voice, level of detail, narrative flow.
* Anywhere a diagram or photo would significantly help to illustrate a point.
* Any sections that should be rewritten, rethought, or removed.
* Is there a relevant and useful technology that isn't mentioned and should be?
* Test out _mario_ on your own hardware/VM. Does it work for you as advertised?
* Is this something you'd actually read?
* Is this something you'd recommend to others?
* What would you expect to pay for a print copy?
* What would you expect to pay for a digital copy?
* Any feedback on the [book website](https://selfhostbook.com)?

## Issues

Here's a quick summary of the stuff I'm aware of and working on. IDs start with `am` to avoid conflicts with IDs that might be generated by some other issue tracker, should I choose one. I (Adam) am the assignee for all of these.

| ID   | Description | Status | Resolution Details |
|------|-------------|--------|--------------------|
| am23 | add illustration: squeaky clean chickens | OPEN | |
| am37 | port website to hugo | OPEN | |
| am39 | test all links and references in all output formats | OPEN | |
| am40 | run htmlproofer | OPEN | |
| am41 | run epubcheck | OPEN | |
| am43 | port to future home (re-do this Readme) | OPEN | |
| am44 | re-test _mario_ start to finish | OPEN | |
| am46 | make _Services_ map 1:1 with _mario_: add dyndns, mail, Traefik | OPEN | |
| am47 | exclude/explain `MARIO_DOMAIN_NAME` in book text | OPEN | |
| am48 | use service nicknames consistently: e.g. `media.example.com` | OPEN | |
| am49 | improve FOSS "profit" argument | OPEN | |
| am50 | print and proof it | OPEN | |
| am51 | split print and screen PDF generation | RESOLVED | |

## How to build the book

See "How to build this book" in the book itself.

## Copyright and license

This pre-publication secret manuscript of _Steadfast Self-Hosting: Rapid-Rise Personal Cloud_ is copyright &copy;2023 Adam Monsen. All rights reserved.

## Editing stages reference

From <https://www.ingramspark.com/how-to-self-publish-a-book>...

### Manuscript Critique

This is a high-level examination of your manuscript. It looks at things like narrative voice, plot, and character development. With this type of critique, editors give feedback on items that will help improve your overall story.

### Comprehensive Edit / Line Edit

A comprehensive edit addresses structural issues (similar to a manuscript critique), but it also involves a line edit, which looks closely at writing style and language. With a line edit, an editor focuses on the use of language to communicate your story to a reader.

### Copyedit

A copyedit is often confused with a line edit, but they're very different steps in the editing process. A copyedit reviews technical flaws--issues with spelling, grammar, and punctuation--and looks for internal inconsistencies throughout the text.

### Proofread

This is the final step in the editing process. A proofreader examines the final copy of the manuscript (usually after typesetting) for any awkward page breaks, and he or she might perform some light copyediting.

## Style guide

* pay attention to and follow the existing style
    * standardize whenever possible and formalize conventions here
* images
    * center most and constrain to 80% wide
* exclude optional slashes at ends of hyperlinks
* capitalize product/project names in prose as they appear in upstream's branding/docs
* capitalize only the first letter of the first word of sections/headers
    * except: follow styling of proper nouns, acronyms, etc.
* define jargon and acronym twice:
    * at first appearance, immediately following the term, in parentheses or locale-appropriate delimiters
    * in the glossary
* footnotes
    * don't use footnotes
* links
    * include links next to or very near context, but try to avoid breaking the flow of text
    * always include typed-out URL, never link text directly
        * this is to ensure consistent appearance across print and electronic versions
    * exclude URL scheme from http(s) links
        * this is handled automatically by asciidoc option `hide-uri-scheme`
        * `https` is a safe guess/default (and hopefully people insist on `https` client-side!)
    * if a link works without `www.` at the beginning of the domain name, omit it
        * this is bit of a risk: we're prioritizing shorter links in favor of more reliable links (some websites redirect, adding back `www.`)
    * if a link works without a SEO slug, omit it
        * example w/slug: `https://reddit.com/r/BorgBackup/comments/v3bwfg/why_should_i_switch_from_restic_to_borg/`
        * example w/o slug: `https://reddit.com/r/BorgBackup/comments/v3bwfg/`
    * use more readable version for cross references whenever possible
        * no: `<<_more_about_foss>>`
        * yes: `<<More about FOSS>>`
* use "command line" to refer to a Linux text-based interactive user interface
* use [Oxford commas](https://en.wikipedia.org/wiki/Serial_comma)
* use [one sentence](https://asciidoctor.org/docs/asciidoc-recommended-practices/#one-sentence-per-line) [per line](https://sive.rs/1s)
	* for prose paragraphs only
* shell scripts
    * prefer long form for command line flags, e.g. `--attribute` instead of `-a`
* source control
    * commit early and often
    * group logically related changes into single commits
        * consider future maintainers may wish to `git revert`: try to make that easy for them
    * group a series of related changes in a branch
    * squashing is OK
    * before submitting patches:
        * ensure build passes
    * commit log messages
        * the first line of a commit log message is very important: say precisely **what** change you made, save the **why** for the rest
        * use infinitive verb forms, e.g. "add -q quiet option"
        * don't wrap body text
        * see also:
            * <https://mifosforge.jira.com/wiki/spaces/MIFOS/pages/4456742/Commit+Log+Guide>
            * <https://lore.kernel.org/git/7vr4waoics.fsf@alter.siamese.dyndns.org/>
            * <https://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html>
* use `shb` namespace for document attributes
	* short for "self-hosting book"
	* example: `shb-printPDF`, used when generating a PDF for printing
