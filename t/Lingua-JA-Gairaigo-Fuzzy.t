# This is a test for module Lingua::JA::Gairaigo::Fuzzy.

use warnings;
use strict;
use Test::More;
use Lingua::JA::Gairaigo::Fuzzy 'same_gairaigo';
use utf8;

#
#  ____           _ _   _                
# |  _ \ ___  ___(_) |_(_)_   _____  ___ 
# | |_) / _ \/ __| | __| \ \ / / _ \/ __|
# |  __/ (_) \__ \ | |_| |\ V /  __/\__ \
# |_|   \___/|___/_|\__|_| \_/ \___||___/
#                                       
#

# Test with hei versus he- (chouon).

ok (same_gairaigo ('ヘイホ', 'ヘーホ'));
ok (same_gairaigo ('メインフレーム', 'メーンフレーム'));

# Test with sokuon versus chouon.

ok (same_gairaigo ('ガーベッジコレクション', 'ガベジコレクション'));
ok (same_gairaigo ('ガーベッジコレクション', 'ガーベジコレクション'));

# Test with dot/no dot.

ok (same_gairaigo ('ジャーマン・シェパード', 'ジャーマンシェパード'));

# Test with chouon/no chouon

ok (same_gairaigo ('ローンダリング', 'ロンダリング'));

#
#  _   _                  _   _                
# | \ | | ___  __ _  __ _| |_(_)_   _____  ___ 
# |  \| |/ _ \/ _` |/ _` | __| \ \ / / _ \/ __|
# | |\  |  __/ (_| | (_| | |_| |\ V /  __/\__ \
# |_| \_|\___|\__, |\__,_|\__|_| \_/ \___||___/
#             |___/                            
#

# Test for a false positive.

ok (! same_gairaigo ('メインフレーム', 'フレームメーン'));
ok (! same_gairaigo ('プリン', 'プリンタ'));

done_testing ();

# Local variables:
# mode: perl
# End:
