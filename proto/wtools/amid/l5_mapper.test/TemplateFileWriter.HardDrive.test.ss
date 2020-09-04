( function _TemplateFileWriter_HardDrive_test_ss_( ) {

'use strict';

if( typeof module !== 'undefined' )
{
  require( './aTemplateFileWriter.test.s' );
}

//

let _ = _global_.wTools;
let Parent = wTests[ 'Tools/mid/l5.test/TemplateFileWriter/Abstract' ];

_.assert( !!Parent );

//

function onSuiteBegin( test )
{
  let context = this;
  context.provider = _.FileProvider.HardDrive({ protocol : 'current' });
  context.hub = _.FileProvider.Hub({ providers : [ context.provider ], defaultProvider : context.provider });
  let path = context.provider.path;
  context.suiteTempPath = path.tempOpen( 'suite-TemplateFileWriter' );
  context.suiteTempPath = context.provider.pathResolveLinkFull
  ({
    filePath : context.suiteTempPath,
    resolvingSoftLink : 1,
    resolvingTextLink : 1,
  });
}

// --
// declare
// --

var Proto =
{

  name : 'Tools/mid/l5.test/TemplateFileWriter/HardDrive',
  abstract : 0,
  silencing : 1,
  enabled : 1,

  onSuiteBegin,

  context :
  {
    suiteTempPath : null,
  },

  tests :
  {
  },

}

//

let Self = new wTestSuite( Proto ).inherit( Parent );
if( typeof module !== 'undefined' && !module.parent )
wTester.test( Self.name );

})();