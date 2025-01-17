(*
   List files that semgrep treats as targets before rule-specific
   or language-specific filtering.

   This is an internal/experimental option for troubleshooting
   currently implemented as a '--x-ls' flag of 'semgrep scan' for simplicity
   of implementation.
   If we wanted to make it official and permanent, we should probably
   turn it into a proper 'semgrep ls' or 'semgrep show targets' subcommand.
*)

(*
   Print the list of selected targets in alphabetical order, one per line.
*)
val run :
  target_roots:Fpath.t list ->
  targeting_conf:Find_targets.conf ->
  unit ->
  Exit_code.t
