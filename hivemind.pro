######################################################################
# Automatically generated by qmake (3.0) Thu Jan 14 12:02:26 2016
######################################################################

TEMPLATE = app
TARGET = hivemind
INCLUDEPATH += . \
               src \
               src/leveldb/port/win \
               src/crypto \
               src/primitives \
               src/script \
               src/univalue \
               src/json \
               src/compat \
               src/secp256k1/include \
               src/leveldb/helpers/memenv \
               src/linalg/src \
               src/qt \
               src/test \
               src/fdlibm/src \
               src/qt/test \
               src/secp256k1/src \
               src/secp256k1/src/java

# Input
HEADERS += src/addrman.h \
           src/alert.h \
           src/allocators.h \
           src/amount.h \
           src/arith_uint256.h \
           src/base58.h \
           src/bloom.h \
           src/chain.h \
           src/chainparams.h \
           src/chainparamsbase.h \
           src/chainparamsseeds.h \
           src/checkpoints.h \
           src/checkqueue.h \
           src/clientversion.h \
           src/coincontrol.h \
           src/coins.h \
           src/compat.h \
           src/compressor.h \
           src/core_io.h \
           src/crypter.h \
           src/db.h \
           src/eccryptoverify.h \
           src/ecwrapper.h \
           src/hash.h \
           src/init.h \
           src/key.h \
           src/keystore.h \
           src/leveldbwrapper.h \
           src/limitedmap.h \
           src/main.h \
           src/merkleblock.h \
           src/miner.h \
           src/mruset.h \
           src/net.h \
           src/netbase.h \
           src/noui.h \
           src/pow.h \
           src/protocol.h \
           src/pubkey.h \
           src/random.h \
           src/rpcclient.h \
           src/rpcprotocol.h \
           src/rpcserver.h \
           src/serialize.h \
           src/streams.h \
           src/sync.h \
           src/threadsafety.h \
           src/timedata.h \
           src/tinyformat.h \
           src/txdb.h \
           src/txmempool.h \
           src/ui_interface.h \
           src/uint256.h \
           src/undo.h \
           src/util.h \
           src/utilmoneystr.h \
           src/utilstrencodings.h \
           src/utiltime.h \
           src/version.h \
           src/wallet.h \
           src/wallet_ismine.h \
           src/walletdb.h \
           src/compat/sanity.h \
           src/crypto/common.h \
           src/crypto/hmac_sha256.h \
           src/crypto/hmac_sha512.h \
           src/crypto/rfc6979_hmac_sha256.h \
           src/crypto/ripemd160.h \
           src/crypto/sha1.h \
           src/crypto/sha256.h \
           src/crypto/sha512.h \
           src/json/json_spirit.h \
           src/json/json_spirit_error_position.h \
           src/json/json_spirit_reader.h \
           src/json/json_spirit_reader_template.h \
           src/json/json_spirit_stream_reader.h \
           src/json/json_spirit_utils.h \
           src/json/json_spirit_value.h \
           src/json/json_spirit_writer.h \
           src/json/json_spirit_writer_template.h \
           src/primitives/block.h \
           src/primitives/market.h \
           src/primitives/transaction.h \
           src/qt/addressbookpage.h \
           src/qt/addresstablemodel.h \
           src/qt/askpassphrasedialog.h \
           src/qt/authorpendingtablemodel.h \
           src/qt/authorview.h \
           src/qt/ballotballotfilterproxymodel.h \
           src/qt/ballotballottablemodel.h \
           src/qt/ballotballotwindow.h \
           src/qt/ballotbranchwindow.h \
           src/qt/ballotoutcomefilterproxymodel.h \
           src/qt/ballotoutcometablemodel.h \
           src/qt/ballotoutcomewindow.h \
           src/qt/ballotsealedvotefilterproxymodel.h \
           src/qt/ballotsealedvotetablemodel.h \
           src/qt/ballotsealedvotewindow.h \
           src/qt/ballotview.h \
           src/qt/ballotvotefilterproxymodel.h \
           src/qt/ballotvotetablemodel.h \
           src/qt/ballotvotewindow.h \
           src/qt/clientmodel.h \
           src/qt/coincontroldialog.h \
           src/qt/coincontroltreewidget.h \
           src/qt/combocreationwidget.h \
           src/qt/csvmodelwriter.h \
           src/qt/decisionbranchfilterproxymodel.h \
           src/qt/decisionbranchtablemodel.h \
           src/qt/decisionbranchwindow.h \
           src/qt/decisioncreationwidget.h \
           src/qt/decisiondecisionfilterproxymodel.h \
           src/qt/decisiondecisiontablemodel.h \
           src/qt/decisiondecisionwindow.h \
           src/qt/decisionmarketcreationwidget.h \
           src/qt/decisionmarketfilterproxymodel.h \
           src/qt/decisionmarkettablemodel.h \
           src/qt/decisionmarketwindow.h \
           src/qt/decisionselectionmodel.h \
           src/qt/decisionselectionview.h \
           src/qt/decisiontradefilterproxymodel.h \
           src/qt/decisiontradetablemodel.h \
           src/qt/decisiontradewindow.h \
           src/qt/decisionview.h \
           src/qt/decisionviewgraph.h \
           src/qt/editaddressdialog.h \
           src/qt/guiconstants.h \
           src/qt/guiutil.h \
           src/qt/hivemindaddressvalidator.h \
           src/qt/hivemindamountfield.h \
           src/qt/hivemindgui.h \
           src/qt/hivemindunits.h \
           src/qt/intro.h \
           src/qt/macdockiconhandler.h \
           src/qt/macnotificationhandler.h \
           src/qt/marketview.h \
           src/qt/marketviewgraph.h \
           src/qt/networkstyle.h \
           src/qt/notificator.h \
           src/qt/openuridialog.h \
           src/qt/optionsdialog.h \
           src/qt/optionsmodel.h \
           src/qt/overviewpage.h \
           src/qt/paymentrequestplus.h \
           src/qt/paymentserver.h \
           src/qt/peertablemodel.h \
           src/qt/qvalidatedlineedit.h \
           src/qt/qvaluecombobox.h \
           src/qt/receivecoinsdialog.h \
           src/qt/receiverequestdialog.h \
           src/qt/recentrequeststablemodel.h \
           src/qt/resolvevotecoltablemodel.h \
           src/qt/resolvevotedialog.h \
           src/qt/resolvevotegraph.h \
           src/qt/resolvevoteinputtablemodel.h \
           src/qt/resolvevoterowtablemodel.h \
           src/qt/rpcconsole.h \
           src/qt/scicon.h \
           src/qt/sendcoinsdialog.h \
           src/qt/sendcoinsentry.h \
           src/qt/signverifymessagedialog.h \
           src/qt/splashscreen.h \
           src/qt/trafficgraphwidget.h \
           src/qt/transactiondesc.h \
           src/qt/transactiondescdialog.h \
           src/qt/transactionfilterproxy.h \
           src/qt/transactionrecord.h \
           src/qt/transactiontablemodel.h \
           src/qt/transactionview.h \
           src/qt/utilitydialog.h \
           src/qt/walletframe.h \
           src/qt/walletmodel.h \
           src/qt/walletmodeltransaction.h \
           src/qt/walletview.h \
           src/qt/winshutdownmonitor.h \
           src/script/hivemindconsensus.h \
           src/script/interpreter.h \
           src/script/script.h \
           src/script/script_error.h \
           src/script/sigcache.h \
           src/script/sign.h \
           src/script/standard.h \
           src/test/bignum.h \
           src/univalue/univalue.h \
           src/univalue/univalue_escapes.h \
           src/fdlibm/src/fdlibm.h \
           src/leveldb/db/builder.h \
           src/leveldb/db/db_impl.h \
           src/leveldb/db/db_iter.h \
           src/leveldb/db/dbformat.h \
           src/leveldb/db/filename.h \
           src/leveldb/db/log_format.h \
           src/leveldb/db/log_reader.h \
           src/leveldb/db/log_writer.h \
           src/leveldb/db/memtable.h \
           src/leveldb/db/skiplist.h \
           src/leveldb/db/snapshot.h \
           src/leveldb/db/table_cache.h \
           src/leveldb/db/version_edit.h \
           src/leveldb/db/version_set.h \
           src/leveldb/db/write_batch_internal.h \
           src/leveldb/port/atomic_pointer.h \
           src/leveldb/port/port.h \
           src/leveldb/port/port_example.h \
           src/leveldb/port/port_posix.h \
           src/leveldb/port/port_win.h \
           src/leveldb/port/thread_annotations.h \
           src/leveldb/table/block.h \
           src/leveldb/table/block_builder.h \
           src/leveldb/table/filter_block.h \
           src/leveldb/table/format.h \
           src/leveldb/table/iterator_wrapper.h \
           src/leveldb/table/merger.h \
           src/leveldb/table/two_level_iterator.h \
           src/leveldb/util/arena.h \
           src/leveldb/util/coding.h \
           src/leveldb/util/crc32c.h \
           src/leveldb/util/hash.h \
           src/leveldb/util/histogram.h \
           src/leveldb/util/logging.h \
           src/leveldb/util/mutexlock.h \
           src/leveldb/util/posix_logger.h \
           src/leveldb/util/random.h \
           src/leveldb/util/testharness.h \
           src/leveldb/util/testutil.h \
           src/linalg/src/tc_mat.h \
           src/qt/test/paymentrequestdata.h \
           src/qt/test/paymentservertests.h \
           src/qt/test/uritests.h \
           src/secp256k1/include/secp256k1.h \
           src/secp256k1/src/bench.h \
           src/secp256k1/src/ecdsa.h \
           src/secp256k1/src/ecdsa_impl.h \
           src/secp256k1/src/eckey.h \
           src/secp256k1/src/eckey_impl.h \
           src/secp256k1/src/ecmult.h \
           src/secp256k1/src/ecmult_gen.h \
           src/secp256k1/src/ecmult_gen_impl.h \
           src/secp256k1/src/ecmult_impl.h \
           src/secp256k1/src/field.h \
           src/secp256k1/src/field_10x26.h \
           src/secp256k1/src/field_10x26_impl.h \
           src/secp256k1/src/field_5x52.h \
           src/secp256k1/src/field_5x52_asm_impl.h \
           src/secp256k1/src/field_5x52_impl.h \
           src/secp256k1/src/field_5x52_int128_impl.h \
           src/secp256k1/src/field_gmp.h \
           src/secp256k1/src/field_gmp_impl.h \
           src/secp256k1/src/field_impl.h \
           src/secp256k1/src/group.h \
           src/secp256k1/src/group_impl.h \
           src/secp256k1/src/num.h \
           src/secp256k1/src/num_gmp.h \
           src/secp256k1/src/num_gmp_impl.h \
           src/secp256k1/src/num_impl.h \
           src/secp256k1/src/scalar.h \
           src/secp256k1/src/scalar_4x64.h \
           src/secp256k1/src/scalar_4x64_impl.h \
           src/secp256k1/src/scalar_8x32.h \
           src/secp256k1/src/scalar_8x32_impl.h \
           src/secp256k1/src/scalar_impl.h \
           src/secp256k1/src/testrand.h \
           src/secp256k1/src/testrand_impl.h \
           src/secp256k1/src/util.h \
           src/leveldb/helpers/memenv/memenv.h \
           src/leveldb/include/leveldb/c.h \
           src/leveldb/include/leveldb/cache.h \
           src/leveldb/include/leveldb/comparator.h \
           src/leveldb/include/leveldb/db.h \
           src/leveldb/include/leveldb/dumpfile.h \
           src/leveldb/include/leveldb/env.h \
           src/leveldb/include/leveldb/filter_policy.h \
           src/leveldb/include/leveldb/iterator.h \
           src/leveldb/include/leveldb/options.h \
           src/leveldb/include/leveldb/slice.h \
           src/leveldb/include/leveldb/status.h \
           src/leveldb/include/leveldb/table.h \
           src/leveldb/include/leveldb/table_builder.h \
           src/leveldb/include/leveldb/write_batch.h \
           src/leveldb/port/win/stdint.h \
           src/secp256k1/src/java/org_hivemind_NativeSecp256k1.h \
           src/linalg/src/tc_mat.c \
           src/secp256k1/src/secp256k1.c
FORMS += src/qt/forms/addressbookpage.ui \
         src/qt/forms/askpassphrasedialog.ui \
         src/qt/forms/authorview.ui \
         src/qt/forms/coincontroldialog.ui \
         src/qt/forms/combocreationwidget.ui \
         src/qt/forms/decisioncreationwidget.ui \
         src/qt/forms/decisionmarketcreationwidget.ui \
         src/qt/forms/decisionselectionview.ui \
         src/qt/forms/editaddressdialog.ui \
         src/qt/forms/helpmessagedialog.ui \
         src/qt/forms/intro.ui \
         src/qt/forms/openuridialog.ui \
         src/qt/forms/optionsdialog.ui \
         src/qt/forms/overviewpage.ui \
         src/qt/forms/receivecoinsdialog.ui \
         src/qt/forms/receiverequestdialog.ui \
         src/qt/forms/rpcconsole.ui \
         src/qt/forms/sendcoinsdialog.ui \
         src/qt/forms/sendcoinsentry.ui \
         src/qt/forms/signverifymessagedialog.ui \
         src/qt/forms/transactiondescdialog.ui
SOURCES += src/addrman.cpp \
           src/alert.cpp \
           src/allocators.cpp \
           src/amount.cpp \
           src/arith_uint256.cpp \
           src/base58.cpp \
           src/bloom.cpp \
           src/chain.cpp \
           src/chainparams.cpp \
           src/chainparamsbase.cpp \
           src/checkpoints.cpp \
           src/clientversion.cpp \
           src/coins.cpp \
           src/compressor.cpp \
           src/core_read.cpp \
           src/core_write.cpp \
           src/crypter.cpp \
           src/db.cpp \
           src/eccryptoverify.cpp \
           src/ecwrapper.cpp \
           src/hash.cpp \
           src/hivemind-cli.cpp \
           src/hivemind-tx.cpp \
           src/hivemindd.cpp \
           src/init.cpp \
           src/key.cpp \
           src/keystore.cpp \
           src/leveldbwrapper.cpp \
           src/main.cpp \
           src/merkleblock.cpp \
           src/miner.cpp \
           src/net.cpp \
           src/netbase.cpp \
           src/noui.cpp \
           src/pow.cpp \
           src/protocol.cpp \
           src/pubkey.cpp \
           src/random.cpp \
           src/rest.cpp \
           src/rpcblockchain.cpp \
           src/rpcclient.cpp \
           src/rpcdump.cpp \
           src/rpcmining.cpp \
           src/rpcmisc.cpp \
           src/rpcnet.cpp \
           src/rpcprotocol.cpp \
           src/rpcrawtransaction.cpp \
           src/rpcserver.cpp \
           src/rpcwallet.cpp \
           src/sync.cpp \
           src/timedata.cpp \
           src/txdb.cpp \
           src/txmempool.cpp \
           src/uint256.cpp \
           src/util.cpp \
           src/utilmoneystr.cpp \
           src/utilstrencodings.cpp \
           src/utiltime.cpp \
           src/wallet.cpp \
           src/wallet_ismine.cpp \
           src/walletdb.cpp \
           src/compat/glibc_compat.cpp \
           src/compat/glibc_sanity.cpp \
           src/compat/glibcxx_compat.cpp \
           src/compat/glibcxx_sanity.cpp \
           src/compat/strnlen.cpp \
           src/crypto/hmac_sha256.cpp \
           src/crypto/hmac_sha512.cpp \
           src/crypto/rfc6979_hmac_sha256.cpp \
           src/crypto/ripemd160.cpp \
           src/crypto/sha1.cpp \
           src/crypto/sha256.cpp \
           src/crypto/sha512.cpp \
           src/json/json_spirit_reader.cpp \
           src/json/json_spirit_value.cpp \
           src/json/json_spirit_writer.cpp \
           src/primitives/block.cpp \
           src/primitives/market.cpp \
           src/primitives/transaction.cpp \
           src/qt/addressbookpage.cpp \
           src/qt/addresstablemodel.cpp \
           src/qt/askpassphrasedialog.cpp \
           src/qt/authorpendingtablemodel.cpp \
           src/qt/authorview.cpp \
           src/qt/ballotballotfilterproxymodel.cpp \
           src/qt/ballotballottablemodel.cpp \
           src/qt/ballotballotwindow.cpp \
           src/qt/ballotbranchwindow.cpp \
           src/qt/ballotoutcomefilterproxymodel.cpp \
           src/qt/ballotoutcometablemodel.cpp \
           src/qt/ballotoutcomewindow.cpp \
           src/qt/ballotsealedvotefilterproxymodel.cpp \
           src/qt/ballotsealedvotetablemodel.cpp \
           src/qt/ballotsealedvotewindow.cpp \
           src/qt/ballotview.cpp \
           src/qt/ballotvotefilterproxymodel.cpp \
           src/qt/ballotvotetablemodel.cpp \
           src/qt/ballotvotewindow.cpp \
           src/qt/clientmodel.cpp \
           src/qt/coincontroldialog.cpp \
           src/qt/coincontroltreewidget.cpp \
           src/qt/combocreationwidget.cpp \
           src/qt/csvmodelwriter.cpp \
           src/qt/decisionbranchfilterproxymodel.cpp \
           src/qt/decisionbranchtablemodel.cpp \
           src/qt/decisionbranchwindow.cpp \
           src/qt/decisioncreationwidget.cpp \
           src/qt/decisiondecisionfilterproxymodel.cpp \
           src/qt/decisiondecisiontablemodel.cpp \
           src/qt/decisiondecisionwindow.cpp \
           src/qt/decisionmarketcreationwidget.cpp \
           src/qt/decisionmarketfilterproxymodel.cpp \
           src/qt/decisionmarkettablemodel.cpp \
           src/qt/decisionmarketwindow.cpp \
           src/qt/decisionselectionmodel.cpp \
           src/qt/decisionselectionview.cpp \
           src/qt/decisiontradefilterproxymodel.cpp \
           src/qt/decisiontradetablemodel.cpp \
           src/qt/decisiontradewindow.cpp \
           src/qt/decisionview.cpp \
           src/qt/decisionviewgraph.cpp \
           src/qt/editaddressdialog.cpp \
           src/qt/guiutil.cpp \
           src/qt/hivemind.cpp \
           src/qt/hivemindaddressvalidator.cpp \
           src/qt/hivemindamountfield.cpp \
           src/qt/hivemindgui.cpp \
           src/qt/hivemindstrings.cpp \
           src/qt/hivemindunits.cpp \
           src/qt/intro.cpp \
           src/qt/marketview.cpp \
           src/qt/marketviewgraph.cpp \
           src/qt/networkstyle.cpp \
           src/qt/notificator.cpp \
           src/qt/openuridialog.cpp \
           src/qt/optionsdialog.cpp \
           src/qt/optionsmodel.cpp \
           src/qt/overviewpage.cpp \
           src/qt/paymentrequestplus.cpp \
           src/qt/paymentserver.cpp \
           src/qt/peertablemodel.cpp \
           src/qt/qvalidatedlineedit.cpp \
           src/qt/qvaluecombobox.cpp \
           src/qt/receivecoinsdialog.cpp \
           src/qt/receiverequestdialog.cpp \
           src/qt/recentrequeststablemodel.cpp \
           src/qt/resolvevotecoltablemodel.cpp \
           src/qt/resolvevotedialog.cpp \
           src/qt/resolvevotegraph.cpp \
           src/qt/resolvevoteinputtablemodel.cpp \
           src/qt/resolvevoterowtablemodel.cpp \
           src/qt/rpcconsole.cpp \
           src/qt/scicon.cpp \
           src/qt/sendcoinsdialog.cpp \
           src/qt/sendcoinsentry.cpp \
           src/qt/signverifymessagedialog.cpp \
           src/qt/splashscreen.cpp \
           src/qt/trafficgraphwidget.cpp \
           src/qt/transactiondesc.cpp \
           src/qt/transactiondescdialog.cpp \
           src/qt/transactionfilterproxy.cpp \
           src/qt/transactionrecord.cpp \
           src/qt/transactiontablemodel.cpp \
           src/qt/transactionview.cpp \
           src/qt/utilitydialog.cpp \
           src/qt/walletframe.cpp \
           src/qt/walletmodel.cpp \
           src/qt/walletmodeltransaction.cpp \
           src/qt/walletview.cpp \
           src/qt/winshutdownmonitor.cpp \
           src/script/hivemindconsensus.cpp \
           src/script/interpreter.cpp \
           src/script/script.cpp \
           src/script/script_error.cpp \
           src/script/sigcache.cpp \
           src/script/sign.cpp \
           src/script/standard.cpp \
           src/test/accounting_tests.cpp \
           src/test/alert_tests.cpp \
           src/test/allocator_tests.cpp \
           src/test/arith_uint256_tests.cpp \
           src/test/base32_tests.cpp \
           src/test/base58_tests.cpp \
           src/test/base64_tests.cpp \
           src/test/bip32_tests.cpp \
           src/test/bloom_tests.cpp \
           src/test/checkblock_tests.cpp \
           src/test/Checkpoints_tests.cpp \
           src/test/coins_tests.cpp \
           src/test/compress_tests.cpp \
           src/test/crypto_tests.cpp \
           src/test/DoS_tests.cpp \
           src/test/getarg_tests.cpp \
           src/test/hash_tests.cpp \
           src/test/key_tests.cpp \
           src/test/main_tests.cpp \
           src/test/miner_tests.cpp \
           src/test/mruset_tests.cpp \
           src/test/multisig_tests.cpp \
           src/test/netbase_tests.cpp \
           src/test/pmt_tests.cpp \
           src/test/rpc_tests.cpp \
           src/test/rpc_wallet_tests.cpp \
           src/test/sanity_tests.cpp \
           src/test/script_P2SH_tests.cpp \
           src/test/script_tests.cpp \
           src/test/scriptnum_tests.cpp \
           src/test/serialize_tests.cpp \
           src/test/sighash_tests.cpp \
           src/test/sigopcount_tests.cpp \
           src/test/skiplist_tests.cpp \
           src/test/test_hivemind.cpp \
           src/test/test_truthcoin.cpp \
           src/test/timedata_tests.cpp \
           src/test/transaction_tests.cpp \
           src/test/uint256_tests.cpp \
           src/test/univalue_tests.cpp \
           src/test/util_tests.cpp \
           src/test/wallet_tests.cpp \
           src/univalue/gen.cpp \
           src/univalue/univalue.cpp \
           src/univalue/univalue_read.cpp \
           src/univalue/univalue_write.cpp \
           src/fdlibm/src/e_acos.c \
           src/fdlibm/src/e_acosh.c \
           src/fdlibm/src/e_asin.c \
           src/fdlibm/src/e_atan2.c \
           src/fdlibm/src/e_atanh.c \
           src/fdlibm/src/e_cosh.c \
           src/fdlibm/src/e_exp.c \
           src/fdlibm/src/e_fmod.c \
           src/fdlibm/src/e_gamma.c \
           src/fdlibm/src/e_gamma_r.c \
           src/fdlibm/src/e_hypot.c \
           src/fdlibm/src/e_j0.c \
           src/fdlibm/src/e_j1.c \
           src/fdlibm/src/e_jn.c \
           src/fdlibm/src/e_lgamma.c \
           src/fdlibm/src/e_lgamma_r.c \
           src/fdlibm/src/e_log.c \
           src/fdlibm/src/e_log10.c \
           src/fdlibm/src/e_pow.c \
           src/fdlibm/src/e_rem_pio2.c \
           src/fdlibm/src/e_remainder.c \
           src/fdlibm/src/e_scalb.c \
           src/fdlibm/src/e_sinh.c \
           src/fdlibm/src/e_sqrt.c \
           src/fdlibm/src/k_cos.c \
           src/fdlibm/src/k_rem_pio2.c \
           src/fdlibm/src/k_sin.c \
           src/fdlibm/src/k_standard.c \
           src/fdlibm/src/k_tan.c \
           src/fdlibm/src/s_asinh.c \
           src/fdlibm/src/s_atan.c \
           src/fdlibm/src/s_cbrt.c \
           src/fdlibm/src/s_ceil.c \
           src/fdlibm/src/s_copysign.c \
           src/fdlibm/src/s_cos.c \
           src/fdlibm/src/s_erf.c \
           src/fdlibm/src/s_expm1.c \
           src/fdlibm/src/s_fabs.c \
           src/fdlibm/src/s_finite.c \
           src/fdlibm/src/s_floor.c \
           src/fdlibm/src/s_frexp.c \
           src/fdlibm/src/s_ilogb.c \
           src/fdlibm/src/s_isnan.c \
           src/fdlibm/src/s_ldexp.c \
           src/fdlibm/src/s_lib_version.c \
           src/fdlibm/src/s_log1p.c \
           src/fdlibm/src/s_logb.c \
           src/fdlibm/src/s_matherr.c \
           src/fdlibm/src/s_modf.c \
           src/fdlibm/src/s_nextafter.c \
           src/fdlibm/src/s_rint.c \
           src/fdlibm/src/s_scalbn.c \
           src/fdlibm/src/s_signgam.c \
           src/fdlibm/src/s_significand.c \
           src/fdlibm/src/s_sin.c \
           src/fdlibm/src/s_tan.c \
           src/fdlibm/src/s_tanh.c \
           src/fdlibm/src/w_acos.c \
           src/fdlibm/src/w_acosh.c \
           src/fdlibm/src/w_asin.c \
           src/fdlibm/src/w_atan2.c \
           src/fdlibm/src/w_atanh.c \
           src/fdlibm/src/w_cosh.c \
           src/fdlibm/src/w_exp.c \
           src/fdlibm/src/w_fmod.c \
           src/fdlibm/src/w_gamma.c \
           src/fdlibm/src/w_gamma_r.c \
           src/fdlibm/src/w_hypot.c \
           src/fdlibm/src/w_j0.c \
           src/fdlibm/src/w_j1.c \
           src/fdlibm/src/w_jn.c \
           src/fdlibm/src/w_lgamma.c \
           src/fdlibm/src/w_lgamma_r.c \
           src/fdlibm/src/w_log.c \
           src/fdlibm/src/w_log10.c \
           src/fdlibm/src/w_pow.c \
           src/fdlibm/src/w_remainder.c \
           src/fdlibm/src/w_scalb.c \
           src/fdlibm/src/w_sinh.c \
           src/fdlibm/src/w_sqrt.c \
           src/leveldb/db/autocompact_test.cc \
           src/leveldb/db/builder.cc \
           src/leveldb/db/c.cc \
           src/leveldb/db/c_test.c \
           src/leveldb/db/corruption_test.cc \
           src/leveldb/db/db_bench.cc \
           src/leveldb/db/db_impl.cc \
           src/leveldb/db/db_iter.cc \
           src/leveldb/db/db_test.cc \
           src/leveldb/db/dbformat.cc \
           src/leveldb/db/dbformat_test.cc \
           src/leveldb/db/dumpfile.cc \
           src/leveldb/db/filename.cc \
           src/leveldb/db/filename_test.cc \
           src/leveldb/db/leveldb_main.cc \
           src/leveldb/db/log_reader.cc \
           src/leveldb/db/log_test.cc \
           src/leveldb/db/log_writer.cc \
           src/leveldb/db/memtable.cc \
           src/leveldb/db/repair.cc \
           src/leveldb/db/skiplist_test.cc \
           src/leveldb/db/table_cache.cc \
           src/leveldb/db/version_edit.cc \
           src/leveldb/db/version_edit_test.cc \
           src/leveldb/db/version_set.cc \
           src/leveldb/db/version_set_test.cc \
           src/leveldb/db/write_batch.cc \
           src/leveldb/db/write_batch_test.cc \
           src/leveldb/issues/issue178_test.cc \
           src/leveldb/issues/issue200_test.cc \
           src/leveldb/port/port_posix.cc \
           src/leveldb/port/port_win.cc \
           src/leveldb/table/block.cc \
           src/leveldb/table/block_builder.cc \
           src/leveldb/table/filter_block.cc \
           src/leveldb/table/filter_block_test.cc \
           src/leveldb/table/format.cc \
           src/leveldb/table/iterator.cc \
           src/leveldb/table/merger.cc \
           src/leveldb/table/table.cc \
           src/leveldb/table/table_builder.cc \
           src/leveldb/table/table_test.cc \
           src/leveldb/table/two_level_iterator.cc \
           src/leveldb/util/arena.cc \
           src/leveldb/util/arena_test.cc \
           src/leveldb/util/bloom.cc \
           src/leveldb/util/bloom_test.cc \
           src/leveldb/util/cache.cc \
           src/leveldb/util/cache_test.cc \
           src/leveldb/util/coding.cc \
           src/leveldb/util/coding_test.cc \
           src/leveldb/util/comparator.cc \
           src/leveldb/util/crc32c.cc \
           src/leveldb/util/crc32c_test.cc \
           src/leveldb/util/env.cc \
           src/leveldb/util/env_posix.cc \
           src/leveldb/util/env_test.cc \
           src/leveldb/util/env_win.cc \
           src/leveldb/util/filter_policy.cc \
           src/leveldb/util/hash.cc \
           src/leveldb/util/hash_test.cc \
           src/leveldb/util/histogram.cc \
           src/leveldb/util/logging.cc \
           src/leveldb/util/options.cc \
           src/leveldb/util/status.cc \
           src/leveldb/util/testharness.cc \
           src/leveldb/util/testutil.cc \
           src/linalg/src/tc_mat.c \
           src/qt/test/paymentservertests.cpp \
           src/qt/test/test_main.cpp \
           src/qt/test/uritests.cpp \
           src/secp256k1/src/bench_inv.c \
           src/secp256k1/src/bench_recover.c \
           src/secp256k1/src/bench_sign.c \
           src/secp256k1/src/bench_verify.c \
           src/secp256k1/src/secp256k1.c \
           src/secp256k1/src/tests.c \
           src/leveldb/doc/bench/db_bench_sqlite3.cc \
           src/leveldb/doc/bench/db_bench_tree_db.cc \
           src/leveldb/helpers/memenv/memenv.cc \
           src/leveldb/helpers/memenv/memenv_test.cc \
           src/secp256k1/src/java/org_hivemind_NativeSecp256k1.c
RESOURCES += src/qt/hivemind.qrc src/qt/hivemind_locale.qrc
TRANSLATIONS += src/qt/locale/hivemind_ach.ts \
                src/qt/locale/hivemind_af_ZA.ts \
                src/qt/locale/hivemind_ar.ts \
                src/qt/locale/hivemind_be_BY.ts \
                src/qt/locale/hivemind_bg.ts \
                src/qt/locale/hivemind_bs.ts \
                src/qt/locale/hivemind_ca.ts \
                src/qt/locale/hivemind_ca@valencia.ts \
                src/qt/locale/hivemind_ca_ES.ts \
                src/qt/locale/hivemind_cmn.ts \
                src/qt/locale/hivemind_cs.ts \
                src/qt/locale/hivemind_cy.ts \
                src/qt/locale/hivemind_da.ts \
                src/qt/locale/hivemind_de.ts \
                src/qt/locale/hivemind_el_GR.ts \
                src/qt/locale/hivemind_en.ts \
                src/qt/locale/hivemind_eo.ts \
                src/qt/locale/hivemind_es.ts \
                src/qt/locale/hivemind_es_CL.ts \
                src/qt/locale/hivemind_es_DO.ts \
                src/qt/locale/hivemind_es_MX.ts \
                src/qt/locale/hivemind_es_UY.ts \
                src/qt/locale/hivemind_et.ts \
                src/qt/locale/hivemind_eu_ES.ts \
                src/qt/locale/hivemind_fa.ts \
                src/qt/locale/hivemind_fa_IR.ts \
                src/qt/locale/hivemind_fi.ts \
                src/qt/locale/hivemind_fr.ts \
                src/qt/locale/hivemind_fr_CA.ts \
                src/qt/locale/hivemind_gl.ts \
                src/qt/locale/hivemind_gu_IN.ts \
                src/qt/locale/hivemind_he.ts \
                src/qt/locale/hivemind_hi_IN.ts \
                src/qt/locale/hivemind_hr.ts \
                src/qt/locale/hivemind_hu.ts \
                src/qt/locale/hivemind_id_ID.ts \
                src/qt/locale/hivemind_it.ts \
                src/qt/locale/hivemind_ja.ts \
                src/qt/locale/hivemind_ka.ts \
                src/qt/locale/hivemind_kk_KZ.ts \
                src/qt/locale/hivemind_ko_KR.ts \
                src/qt/locale/hivemind_ky.ts \
                src/qt/locale/hivemind_la.ts \
                src/qt/locale/hivemind_lt.ts \
                src/qt/locale/hivemind_lv_LV.ts \
                src/qt/locale/hivemind_mn.ts \
                src/qt/locale/hivemind_ms_MY.ts \
                src/qt/locale/hivemind_nb.ts \
                src/qt/locale/hivemind_nl.ts \
                src/qt/locale/hivemind_pam.ts \
                src/qt/locale/hivemind_pl.ts \
                src/qt/locale/hivemind_pt_BR.ts \
                src/qt/locale/hivemind_pt_PT.ts \
                src/qt/locale/hivemind_ro_RO.ts \
                src/qt/locale/hivemind_ru.ts \
                src/qt/locale/hivemind_sah.ts \
                src/qt/locale/hivemind_sk.ts \
                src/qt/locale/hivemind_sl_SI.ts \
                src/qt/locale/hivemind_sq.ts \
                src/qt/locale/hivemind_sr.ts \
                src/qt/locale/hivemind_sv.ts \
                src/qt/locale/hivemind_th_TH.ts \
                src/qt/locale/hivemind_tr.ts \
                src/qt/locale/hivemind_uk.ts \
                src/qt/locale/hivemind_ur_PK.ts \
                src/qt/locale/hivemind_uz@Cyrl.ts \
                src/qt/locale/hivemind_vi.ts \
                src/qt/locale/hivemind_vi_VN.ts \
                src/qt/locale/hivemind_zh_CN.ts \
                src/qt/locale/hivemind_zh_HK.ts \
                src/qt/locale/hivemind_zh_TW.ts
