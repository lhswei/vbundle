CommandList::register_list(
  :name  => 'Cucumber',
  :map   =>'<LEADER>c',
  :map_item_with_list => true,
  :items => [
    {
      :function    => 'CheckLineStepDefinition()',
      :map         => 'cl',
      :text        => '[c]heck step definition on the [l]ine',
    },
    {
      :function    => 'CheckFileStepDefinition()',
      :map         => 'cf',
      :text        => '[c]heck step definition for the [f]ile',
    },
    {
      :function    => 'StepFileRecommendations()',
      :map         => 'ns',
      :text        => '[n]ew [s]tep definition',
    },
    {
      :function    => '\<C-W>\<C-]>\<C-W>T',
      :map         => 'j',
      :text        => '[j]ump to step definition',
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
  :name  => 'lookupfile',
  :map   =>'<LEADER>l',
  :map_item_with_list => true,
  :items => [
	{
	  :function    => ':listmaps',
	  :map         => 'm',
	  :text        => '[m]map list',
	}
  ]
)


