CommandList::register_list(
  :name  => 'Quickfix',
  :map   =>'<LEADER>q',
  :map_item_with_list => true,
  :items => [
    {
      :function    => ':copen',
      :map         => 'o',
      :text        => '[o]pen quickfix',
    },
	{
      :function    => ':cclose',
      :map         => 'c',
      :text        => '[c]lose quickfix',
    },
	{
      :function    => ':cp',
      :map         => 'p',
      :text        => '[p]re error',
    },
	{
      :function    => ':cn',
      :map         => 'n',
      :text        => '[n]ext error',
    },
	{
      :function    => ':cw',
      :map         => 'w',
      :text        => '[w]open qkfix if have',
    },
	{
      :function    => ':col',
      :map         => 'l',
      :text        => '[l]pre qkfix',
    },
	{
      :function    => ':cnew',
      :map         => 'e',
      :text        => '[e]next qkfix',
    }

  ]
)

CommandList::register_list(
  :name  => 'Browse',
  :map   =>'<LEADER>b',
  :map_item_with_list => true,
  :items => [
    {
      :function    => ':TlistToggle',
      :map         => 't',
      :text        => '[t]ag',
    },
    {
      :function    => ':NERDTreeToggle',
      :map         => 'f',
      :text        => '[f]ile',
    },
	{
	  :function    => ':BundleSearch',
	  :map		   => 's',
	  :text        => '[s]earch bundle',
	},
	{
	  :function    => ':BundleInstall',
	  :map		   => 'i',
	  :text        => '[i]nstall bundle',
	},
	{
	  :function    => ':BundleClean',
	  :map		   => 'c',
	  :text        => '[c]lean bundle',
	},
	{
	  :function    => ":PluginList",
	  :map		   => 'l',
	  :text        => '[l]ist bundle',

	}
  ]
)


CommandList::register_list(
  :name  => 'Jump',
  :map   =>'<LEADER>j',
  :map_item_with_list => true,
  :items => [
    {
      :function    => '\<C-W>\<C-]>\<C-W>T',
      :map         => 't',
      :text        => '[t]ag',
    },
    {
      :function    => '\<C-W>gF',
      :map         => 'f',
      :text        => '[f]ile',
    },
    {
      :function    => '^\<C-W>gF',
      :map         => 'l',
      :text        => 'file on the current [l]ine',
    },
    {
      :function    => 'OpenGizmoPage()',
      :map         => 'g',
      :text        => '[g]izmo page',
    },
  ]
)
CommandList::register_list(
  :name  => 'list',
  :map   =>'<LEADER>g',
  :map_item_with_list => true,
  :items => [
	{
	  :function    => ':FufBuffer',
	  :map         => 'b',
	  :text        => '[b]Buffer mode',
	},
	{
	  :function    => ':FufFile',
	  :map         => 'f',
	  :text        => '[f]File mode',
	},
	{
	  :function    => ':FufDir',
	  :map         => 'd',
	  :text        => '[d]Directory mode',
	},
	{
	  :function    => ':FufLine',
	  :map         => 'l',
	  :text        => '[l]Line mode',
	},
	{
	  :function    => ':FufQuickfix',
	  :map         => 'q',
	  :text        => '[q]Quickfix mode',
	},
	{
	  :function    => ':Listmaps',
	  :map         => 'm',
	  :text        => '[m]map list',
	}
  ]
)

CommandList::register_list(
  :name  => 'cscope',
  :map   =>'<LEADER>f',
  :map_item_with_list => true,
  :items => [
	{
	  :function    => ':CSCopeToggle',
	  :map         => 'a',
	  :text        => '[a]ll command list',
	},
	{
	  :function    => ':LocationList',
	  :map         => 'o',
	  :text        => '[o]ocaltionlist toggole',
	},
	{
	  :function    => ':CsFindg',
	  :map         => 'g',
	  :text        => '[g]Find this definition',
	},
	{
	  :function    => ':CsFindd',
	  :map         => 'd',
	  :text        => '[d]Find functions called by this function',
	},
	{
	  :function    => ':CsFindc',
	  :map         => 'c',
	  :text        => '[c]Find functions calling this function',
	},
	{
	  :function    => ':CsFindt',
	  :map         => 't',
	  :text        => '[t]Find this text string',
	},
	{
	  :function    => ':CsFinde',
	  :map         => 'e',
	  :text        => '[e]Find this egrep pattern',
	},
	{
	  :function    => ':CsFindf',
	  :map         => 'f',
	  :text        => '[f]Find this file',
	},
	{
	  :function    => ':CsFindi',
	  :map         => 'i',
	  :text        => '[i]Find files #including this file',
	},
	{
	  :function    => ':CscopeList',
	  :map         => 'l',
	  :text        => '[l]ist loaded cscope',
	},
	{
	  :function    => ':CscopeClear',
	  :map         => 'r',
	  :text        => '[r]clear cscope',
	},
	{
	  :function    => ':CsUpdateDb',
	  :map         => 'u',
	  :text        => '[u]update cscope db',
	},
	{
	  :function    => ':MyMakeLuaTag',
	  :map         => 'm',
	  :text        => '[m]yMakeLuaTag',
	}

  ]

)

