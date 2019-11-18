

::oo::class create ::loon::classes::Scatterplot3D_Widget {
    
    superclass ::loon::classes::Plot_Widget\
	::loon::classes::Scatterplot3D_Model


    method InitView {} {
	my variable widgetpath widgetview

	set widgetview [::loon::classes::Scatterplot3D_View new $widgetpath]
	
    next
    
    }

    method aspect {args} {
	my variable widgetview
	$widgetview aspect {*}$args
    }
}
