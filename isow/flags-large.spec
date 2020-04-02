; This is intentionally empty file. The idea is that the user can
; override this one with another file with the same name containing
; customizations (additional nations) earlier in freeciv data path.

[spec]

; Format and options of this spec file:
options = "+Freeciv-2.6-spec"

[info]

artists = "
   See flags.spec
"

[extra]
sprites =
	{	"tag", "file"
		"f.kth", "sowflags/kth-large"
	}
*include "override/flags-large.spec"
