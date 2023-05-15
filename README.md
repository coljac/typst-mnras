# typst-mnras

This is a draft of a Typst template for the Monthly Notices of the Royal Astronomical Society journal.

There are a few main outstanding issues:

1. The ability to have a figure float outside of the two-column format (so tables and images can span the page). See: https://github.com/typst/typst/issues/553
2. The citations need some tweaking. Currently,  `#cite("jacobs2023paper", brackets: false)` results in "Jacobs 2023" not "Jacobs (2023)" as you'd expect. The `cite` function needs a bit more work. See: https://github.com/typst/typst/issues/658
3. Footnotes.

