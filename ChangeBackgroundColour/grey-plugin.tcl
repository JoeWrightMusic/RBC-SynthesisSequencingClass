proc change_the_colours {mytoplevel} {
set background "#CDD3DB"


    if { ! [winfo exists $mytoplevel] } {return}
    if {$mytoplevel eq ".pdwindow"} {return}
    set tkcanvas [tkcanvas_name $mytoplevel]
    $tkcanvas configure -background $background
}

bind PatchWindow <<EditMode>> {+change_the_colours %W}
bind PatchWindow <Configure> {+change_the_colours %W}
bind PatchWindow <Map> {+change_the_colours %W}
bind PatchWindow <Unmap> {+change_the_colours %W}
bind PatchWindow <FocusIn> {+change_the_colours %W}
