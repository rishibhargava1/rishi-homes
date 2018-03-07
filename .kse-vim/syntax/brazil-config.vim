if exists('b:current_syntax')
  finish
endif

if exists('b:brazil_package_Config')
  set iskeyword+=-

  command -nargs=1 BrazilConfigDefineKeyword syntax match bcConfigKeyword containedin=bcKey,bcInnerKey,bcBareword /\<<args>\>/
  BrazilConfigDefineKeyword ANYCONTENTDB
  BrazilConfigDefineKeyword ATTRIBUTEDBS
  BrazilConfigDefineKeyword AWOBS
  BrazilConfigDefineKeyword BUILDATTRIBUTEDBS
  BrazilConfigDefineKeyword CAPPLICATION
  BrazilConfigDefineKeyword CEMETADATA
  BrazilConfigDefineKeyword CLIBRARY
  BrazilConfigDefineKeyword COMPILEDTEMPLATES
  BrazilConfigDefineKeyword CONFIG
  BrazilConfigDefineKeyword COPYSRC
  BrazilConfigDefineKeyword CPAN
  BrazilConfigDefineKeyword CPPTOHTML
  BrazilConfigDefineKeyword CSHAREDOBJECT
  BrazilConfigDefineKeyword DOCUMENTATION
  BrazilConfigDefineKeyword DOXYGEN
  BrazilConfigDefineKeyword HTTPREDIRECTS
  BrazilConfigDefineKeyword JAVAANT
  BrazilConfigDefineKeyword JAVAAPPLICATION
  BrazilConfigDefineKeyword JAVADOC
  BrazilConfigDefineKeyword JAVALIBRARY
  BrazilConfigDefineKeyword KEYVALUEDB
  BrazilConfigDefineKeyword LISP
  BrazilConfigDefineKeyword LISPIMAGE
  BrazilConfigDefineKeyword LISPLIBRARY
  BrazilConfigDefineKeyword LOCALIZATION
  BrazilConfigDefineKeyword MERCHANTDISPLAYNAMES
  BrazilConfigDefineKeyword PERL
  BrazilConfigDefineKeyword PERLDOC
  BrazilConfigDefineKeyword RDOC
  BrazilConfigDefineKeyword RUBY
  BrazilConfigDefineKeyword RUBYEXTENSION
  BrazilConfigDefineKeyword S3BINARY
  BrazilConfigDefineKeyword SYMLINKS
  BrazilConfigDefineKeyword THIRDPARTY
  BrazilConfigDefineKeyword ZDBMAP
  BrazilConfigDefineKeyword ZINTERFACE
  BrazilConfigDefineKeyword ZJAVASERVER
  BrazilConfigDefineKeyword ZMODULE
  BrazilConfigDefineKeyword ZSERVER
  BrazilConfigDefineKeyword additional-directories
  BrazilConfigDefineKeyword allowed-dependency-types
  BrazilConfigDefineKeyword anycontentdb
  BrazilConfigDefineKeyword approvedTicketNumber
  BrazilConfigDefineKeyword argument_list
  BrazilConfigDefineKeyword attribute_files
  BrazilConfigDefineKeyword attributedbs
  BrazilConfigDefineKeyword awobs
  BrazilConfigDefineKeyword base
  BrazilConfigDefineKeyword build-environment
  BrazilConfigDefineKeyword build-system
  BrazilConfigDefineKeyword build-tools
  BrazilConfigDefineKeyword buildForVariants
  BrazilConfigDefineKeyword buildType
  BrazilConfigDefineKeyword buildattributedbs
  BrazilConfigDefineKeyword builtJars
  BrazilConfigDefineKeyword builtLibraries
  BrazilConfigDefineKeyword cache-all-directories
  BrazilConfigDefineKeyword cached-directories
  BrazilConfigDefineKeyword caching-behavior
  BrazilConfigDefineKeyword capplication
  BrazilConfigDefineKeyword cemetadata
  BrazilConfigDefineKeyword clibrary
  BrazilConfigDefineKeyword compileFlags
  BrazilConfigDefineKeyword compiledtemplates
  BrazilConfigDefineKeyword config
  BrazilConfigDefineKeyword containsCPANModules
  BrazilConfigDefineKeyword copysrc
  BrazilConfigDefineKeyword cpan
  BrazilConfigDefineKeyword cpptohtml
  BrazilConfigDefineKeyword csharedobject
  BrazilConfigDefineKeyword customized
  BrazilConfigDefineKeyword dependencies
  BrazilConfigDefineKeyword deploy
  BrazilConfigDefineKeyword distributed
  BrazilConfigDefineKeyword documentation
  BrazilConfigDefineKeyword doxygen
  BrazilConfigDefineKeyword dynamic
  BrazilConfigDefineKeyword externalRpaths
  BrazilConfigDefineKeyword flags
  BrazilConfigDefineKeyword flavors
  BrazilConfigDefineKeyword friends
  BrazilConfigDefineKeyword generation
  BrazilConfigDefineKeyword generic
  BrazilConfigDefineKeyword global-allowed-types
  BrazilConfigDefineKeyword hasConfiguration
  BrazilConfigDefineKeyword httpredirects
  BrazilConfigDefineKeyword interfaces
  BrazilConfigDefineKeyword javaant
  BrazilConfigDefineKeyword javaapplication
  BrazilConfigDefineKeyword javadoc
  BrazilConfigDefineKeyword javalibrary
  BrazilConfigDefineKeyword keyvaluedb
  BrazilConfigDefineKeyword languages_to_build
  BrazilConfigDefineKeyword libraries
  BrazilConfigDefineKeyword licenseFile
  BrazilConfigDefineKeyword licenseType
  BrazilConfigDefineKeyword linkage
  BrazilConfigDefineKeyword lisp
  BrazilConfigDefineKeyword lispimage
  BrazilConfigDefineKeyword lisplibrary
  BrazilConfigDefineKeyword localization
  BrazilConfigDefineKeyword make_runtime_strings_awobs
  BrazilConfigDefineKeyword map
  BrazilConfigDefineKeyword merchantdisplaynames
  BrazilConfigDefineKeyword modules
  BrazilConfigDefineKeyword otherConfigureOptions
  BrazilConfigDefineKeyword otherMakefilePLOptions
  BrazilConfigDefineKeyword output
  BrazilConfigDefineKeyword packages
  BrazilConfigDefineKeyword perl
  BrazilConfigDefineKeyword perlModuleName
  BrazilConfigDefineKeyword perlVerify
  BrazilConfigDefineKeyword perldoc
  BrazilConfigDefineKeyword private
  BrazilConfigDefineKeyword public
  BrazilConfigDefineKeyword rdoc
  BrazilConfigDefineKeyword references
  BrazilConfigDefineKeyword remove-dependencies
  BrazilConfigDefineKeyword repository
  BrazilConfigDefineKeyword resolves-conflict-dependencies
  BrazilConfigDefineKeyword rsyncArgs
  BrazilConfigDefineKeyword ruby
  BrazilConfigDefineKeyword rubyextension
  BrazilConfigDefineKeyword runTests
  BrazilConfigDefineKeyword runtime-dependencies
  BrazilConfigDefineKeyword s3binary
  BrazilConfigDefineKeyword scope
  BrazilConfigDefineKeyword static
  BrazilConfigDefineKeyword symlinks
  BrazilConfigDefineKeyword targetSymlink
  BrazilConfigDefineKeyword targets
  BrazilConfigDefineKeyword test-dependencies
  BrazilConfigDefineKeyword third-party-configuration
  BrazilConfigDefineKeyword thirdPartyName
  BrazilConfigDefineKeyword thirdPartyVersion
  BrazilConfigDefineKeyword thirdparty
  BrazilConfigDefineKeyword type
  BrazilConfigDefineKeyword useCustomBuildScript
  BrazilConfigDefineKeyword versionSet
  BrazilConfigDefineKeyword visibility
  BrazilConfigDefineKeyword workspace
  BrazilConfigDefineKeyword zdbmap
  BrazilConfigDefineKeyword zinterface
  BrazilConfigDefineKeyword zjavaserver
  BrazilConfigDefineKeyword zmodule
  BrazilConfigDefineKeyword zserver
  delcommand BrazilConfigDefineKeyword

  syntax region  bcKVP start=/\w/ end=/;/he=s-1 contains=bcKey,bcVal nextgroup=bcKey transparent
else
  syntax region  bcTopKVP start=/\(\w\|\*\)\+\.\(\w\|\*\)\+\./rs=e+1 end=/;/ transparent contains=bcDomain,bcRealm,bcKVP nextgroup=bcDomain keepend
  syntax region  bcKVP start=/\w/ end=/;/he=s-1 contained contains=bcKey,bcVal nextgroup=bcKey transparent
endif

syntax region  bcInnerKVP start=/\w/ end=/;/he=s-1 contained contains=bcInnerKey,bcVal nextgroup=bcInnerKey transparent

syntax region  bcDomain start=/\(\*\|\w\)/ end=/\./me=s-1 contained nextgroup=bcRealm
syntax region  bcRealm start=/\.\(\*\|\w\)/hs=s+1 end=/\./he=s-1 contained nextgroup=bcKVP

syntax region  bcKey      start=/\(\w\|\.\)\+/ end=/\s*+\?=/me=s-1 contained nextgroup=bcVal
syntax region  bcInnerKey start=/\(\w\|\.\)\+/ end=/\s*+\?=/me=s-1 contained nextgroup=bcVal
syntax region  bcVal start=/+\?=\_s*/ end=/;/ contains=bcNumber,bcHash,bcList,bcString,bcBareword,bcError contained transparent

syntax region  bcHash start=/{/ end=/}/ contained contains=bcInnerKVP extend fold transparent
syntax region  bcList start=/(/ end=/)/ contained contains=bcString,bcBareword,bcHash,bcList,bcNumber extend transparent fold

syntax match   bcBareword display /\<[^#]\+\>/ contained
syntax match   bcNumber contained display /\<\d\+\(\.\d\+\)\?/

syntax region  bcString  start=+"+ skip=+\\"+ end=+"+

syntax keyword bcTodo contained TODO FIXME XXX NOTE WARNING
syntax region  bcComment excludenl start=/#/ end=/$/ contains=bcTodo,@Spell containedin=ALLBUT,bcString

highlight default link bcDomain Label
highlight default link bcRealm Label
highlight default link bcKey Function
highlight default link bcInnerKey Keyword
highlight default link bcNumber String
highlight default link bcBareword String
highlight default link bcString String
highlight default link bcTodo Todo
highlight default link bcComment Comment
highlight default link bcError Error

highlight default link bcConfigKeyword Constant

syn sync fromstart
set foldmethod=syntax
set foldlevel=99
