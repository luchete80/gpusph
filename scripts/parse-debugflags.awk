#!/usr/bin/awk

BEGIN {
	print "/* AUTOGENERATED FILE, DO NOT EDIT, see src/debugflags.def instead */"
}

/^unsigned / {
	print "if (flag == \"" $2 "\") ret." $2 " = 1; else "
}