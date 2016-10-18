CommandList::register_list(
  :name  => 'Cucumber',
  :map   =>'<LEADER>c',
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
  :map   =>'<LEADER>l',
  :map_item_with_list => true,
  :items => [
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
	  :map         => 'l',
	  :text        => '[l]ocaltionlist toggole',
	}
  ]

)

