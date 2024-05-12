; ---- PUNCTUATION ----

[
  "."
  ";"
  ":"
  ","
] @punctuation.delimiter

[
  "("
  ")"
  "["
  "]"
  "{"
  "}"
] @punctuation.bracket

; ---- COMMENTS ----

(comment) @comment

; ---- STRINGS, PATHS, SPECIAL ----

(string) @string

; Differentiate asset paths from regular strings.
(asset_path) @link_uri


[
  "="
] @operator


(None) @label

(namespace_identifier) @enum
(namespace_identifier
  (identifier) @label
)

[
    (float)
    (integer)
] @number

(prim_path) @string.special

(attribute_property) @property
(bool) @boolean

[
    (prim_type)
    (relationship_type)

    (uniform)
    (custom)
] @keyword.function

[
    (orderer)
] @preproc

[
    (attribute_type)
] @type

(identifier) @variable.member
