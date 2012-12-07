/*:VRX         Main
*/
/*  Main */
/*
 * Jasmine - Auto FTP upload soft
 *
 * [History]
 * Version 1.00 (12.Nov.97) since 28.Sep.97
 * > This is first version
 * Version 1.10 (25.Nov.97) since 14.Nov.97
 * > サウンド機能の強化 (V.1.00ではサウンド機能は非公開)
 * > Fontを変更できるように機能追加(14.Nov.97)
 * > サウンド機能の公開とサウンドの添付(ver.1.09 beta 5 at 19.Nov.97)
 * > Remote Dirに複数階層のDirectoryが指定できない不具合を修正(ver.1.09 beta 6 at 23.Nov.97)
 * > Edit Buttonの追加 (若干の仕様変更、Save Buttonの削除) (ver.1.09 beta 6 at 23.Nov.97)
 * > LogファイルのSort順を変更(ver.1.09 beta 6 & beta 7 at 23.Nov.97)
 * > 不具合の修正(beta 1 to beta 7, 1.10)
 * Version 1.11 (07.Dec.97) since 06.Dec.97
 * > Logon Retry機能の追加 (ver.1.19 beta 1 at 06.Dec.97)
 * Version 1.50 (16.May.98) since 01.Feb.98 (1.12 beta)
 * > UpperToLower Functionの追加(ver1.12 beta 1, 01.Feb.98)
 * > 海外のWarpでWarpSansフォントで奇麗に表示するように調整(ver1.12 beta 2, since 10.Feb.98)
 * > Default Fontを`8.Helv Combined'から`9.WarpSans'に変更(Ver1.12 beta 2, 11.Feb.98)
 * > Exit Commandの追加(03.May.98 Version 1.12 beta 5)
 * > 一部設定をPreference Windowで設定するように仕様変更(03.May.98 Version 1.12 beta 5)
 * > 不具合の修正(04.May.98 Version 1.12 beta 6)
 * > Statusに表示するParameterを追加および表示の可否を設定できるように機能追加(05.May.98 Version 1.12.beta 7)
 * > UploadしないFileのExtensionを指定できるように機能追加(05.May.98 Version 1.12.beta 7)
 * > Logon/Upload時のStatus毎にStatus表示部のBackground Colorを変化させるように仕様変更(05.May.98 Version 1.12 beta 8, 06.May.98 Version 1.12 beta 9)
 * > 各FileのTransfer SppedとAverageのTransfer Speedを表示するように機能追加(07.May.98 Version 1.12 beta 10)
 * > Sharewareに変更(07.May.98 Version 1.12 beta 11)
 * > 自動的にTransfer Modeを判別する機能を追加(DefaultはBINARY MODE)(07.May.98 Version 1.12 beta 11)
 * > Font、Preferenceの調整(08.May.98 Version 1.12 beta 12)
 * > 午前0時台のUpload成功後の表示時間の不具合の修正(08.May.98 Version 1.12 beta 13)
 * > PreferenceのPositionを記憶するようにした(09.May.98 Version 1.12 beta 13)
 * > Cancel Upload機能の正式追加(09.May.98 Version 1.12 beta 14)
 * > STATUS表示の調整(10.May.98 Version 1.12 beta 15)
 * > TABの整理(10.May.98 Version 1.12 beta 15)
 * > Version 1.50 Release at 16.May.1998
 * Version 2.00 (31.May.98) since 25.May.98
 * > Takeout機能の実装開始(25-27.May.98 Version 1.90 beta 1, 28.May.98 Version 1.90 beta 2,3)
 * > Takeout機能のメッセージ関連修正(29.May.1998 Version 1.90 beta 4)
 * > `Deselected Available At Local Directory'機能の追加(Takeout) (30.May.1998 Version 1.90 beta 5)
 * > Tune Up(30.May.1998 Version 1.90 beta 6))
 * > Version 2.00公開(31.May.98)
 * Version 2.01 (02.Jun.98) since 02.Jun.98
 * > FtpSiteを削除・追加した時のTakeOutのデータがうまくリンクしない不具合を修正(02.Jun.1998 2.00.1)
 * > Uploadするファイルがない時、Statusにブランク行を表示する不具合を修正(02.Jun.98 2.00.1)
 * > その他、細かい修正等
 * Version 2.50 (05.Sep.98) since 04.Jun.98
 * > Takeout Messageの整理(04.Jun.98 2.01.a)
 * > 細かい修正(04.Jun.98 2.01.a)
 * > Takeout Windowでフォントが正しく反映されない不具合の修正(07.Jun.98 2.01.b)
 * > その他いくつかフォントが正しく反映されない不具合の修正(13.Jun.98 2.01.c)
 * > Ignore File Extension List/ASCII Mode ListのEnable/Disable時の表示色を調整(23.Jun.98 2.01.d)
 * > Ignore File CheckのタイミングをSearch File時に変更。若干の速度向上あり(23.Jun.98 2.01.d)
 * > Ignore File List表示の仕様を変更(23.Jun.98 2.01.d)
 * > Ignore Fileが無い時の不具合を修正(23.Jun.98 2.01.e)
 * > Ignore FileとASCII Extension設定時にNULLは登録しないように修正(01.Jul.98 2.02 beta 1)
 * > INI Fileを読み込み時にIgnore FileとASCII ExtensionのNULLを無視するように修正(01.Jul.98 2.02 beta 1)
 * > Local Disk間でのUpdate FileのCopy機能を追加中(20.Jul.98 2.49 alpha 1, 2.49 beta 1, 21.Jul.98 2.49 beta 2)
 * > FTP/COPY Mode時のMessageを整理(29.Jul.98, 2.49 beta 3)
 * > 登録名に"("があるとCreate Takeout Dataが正しく機能しない問題を修正(29.Jul.98 2.49 beta 4))
 * > SummaryのTotal File数が正しく表示されﾈ｢問題を修正(30.Jul.98, 2.49 beta 5)
 * > 細かい修正(01.Aug.98, 2.49 beta 6)
 * > 細かいデザインの修正(08.Aug.98, 2.49 beta 7)
 * > LocalCopy時のTakeout機能をサポート(12.Aug.98 2.49 beta 8)
 * > `ShowIgnoredFileList' Modeの追加(Ignore File Listの非表示が出来るようになった)(24.Aug.98 2.49 beta 9)
 * > VRCopyFile()でError発生時にOS/2のCOPY.EXEを使用してRETRY COPYを行うように機能強化(24.Aug.98 2.49 beta 9) ← 日本語環境の為の機能
 *   ex.`表'等、文字コードに`\'が含まれる場合、VRCopyFile()ではCopyが失敗する。
 * > LocalCopyModeのTakeOut Functionで使用されるFile Delete関数をVRDeleteFIle()からRexxユーティリティ関数(RexxUtil)のSysFileDelete()に変更(24.Aug.98 2.49 beta 9)
 *   これも文字コードに`\'が入っているファイル対策。
 * > Statusの表示を静かにするMode (Silent Status Indication)を追加。(14.Aug.98 2.49 beta 9)
 * > Fontの修正(Prederence Window) (15.Aug.98 2.49 beta 10)
 * > TakeoutのSummaryを表示するように仕様変更(21.Aug.98 2.49 beta 11)
 * > `Open Local Folder' Functionの追加(21.Aug.98 2.49 beta 11)
 * > Site登録の際、入力されたLocal(Source)/Remote(Destination) directoryのCheckをする機能を追加(21.Aug.98 2.49 beta 11)
 * > ラベル等の名称の整理・統一(21.Aug.98 2.49 beta 11)
 * > Ignore File ListとASCII Mode Listの設定時に接頭語に`*.'が無くても自動的に添付するように機能強化(23.Aug.98 2.49 beta 12)
 * > betaの途中でNew Site登録に発生したBugを修正(03.Sep.98 2.49 beta 13)
 * > 細かい修正や機能強化など(04.Sep.98 2.49 beta 13)
 * > Registryされた場合、Registry情報を見るPush ButtonのCaprionを`Registry'から`About'に変更(03.Sep.98 2.49 beta 14)
 * > Version 2.50 Release (05.Sep.98)
 * Version 2.51 (07.Sep.98) since 06.Jun.98
 * > Correct the probrem  when input NULL at Source/Destination text box (COPY Mode) (06.Sep.98 2.50.a)
 * > 細かい修正や機能強化など(06.Sep.98 2.50.a)
 * Version 2.55 (01.Oct.98) since 07.Jun.98
 * > RETRY COPY時のMessageを訂正(07.Sep.98 2.51.a)
 * > Upload File Check Windowで選択したファイルのStatusを一度に変更できるように機能拡張(08.Sep.98 2.52 beta 1)
 * > Copy Modeの時、Upload File Check WindowでCancelしてもCopyが実行される問題を修正(10.Sep.98 2.52 beta 2)
 * > 細かい修正や機能強化など(All)
 * Version 2.60 (27.Oct.98) since 02.Oct.98
 * > Multiple Run Modeの追加(02-04.Oct.98 2.59 beta 0,1,2)
 * > SiteをDeleteする際に確認するWindowを表示するように仕様変更(04.Oct.98 2.59 beta 2)
 * > Multiple Run Mode実行後、Default Valueに戻す様に仕様変更(17.Oct.98 2.59 beta 3)
 * > Multiple Run Mode時のTotal Lead Timeを表示することも可能に出来るように機能追加(22.Oct.98 2.59 beta 4)
 * > 2.59 beta 4を2.60として公開(27.Oct.98)
 * Version 2.70 (03.Dec.1999) since 29.Nov.98
 * > Bitmap Resourceの一部変更 (29.Nov.98 2.60a)
 * > Focus変更 (02.Dec.98 2.60b)
 * > Language機能を追加。Window上のテキストを各国語で表示できるように機能を追加中(20.Dec.98 2.69 alpha 1)
 * > Language機能の強化と日本語テキストの修正など(22.Dec.98 2.69 beta 1)
 * > Site Name変更時にTakeout Dataの管理名称が変更されない不具合を修正(25.Dec.98 2.69 beta 2)
 * > Site登録時に余計なスペースがあれば除去するように仕様変更(28.Dec.1998 2.69 beta 3)
 * > Language機能を作り込みしてVersion 2.70として公開。
 * Version 2.71 (03.Jan.1999) since 03.Jan.1999
 * > Site Name変更後、Takeout Dataを再構成したときに旧名のSite Nameで生じる問題を修正(03.Jan.1999 2.70 edit 1)
 * > New Site登録時に落ちる問題を修正(03.Jan.1999 2.70 edit 1)
 * > 多少作り込んで2.71公開。
 * Version 2.72 (07.Apr.1999) since 20.Feb.1999
 * > Remote Directoryに正しくChDirしない問題を修正中(since 20.Feb.1999) beta 1c 27.Feb.1999
 * > 上記の続き(beta 2, 07.Mar.1999)
 * > Registry WindowsのUpdate(2.75 beta 3, 31.Mar.1999)
 * > Version 2.72 (2.75ではない)公開。
 * Version 2.72a (24.Apr.1999)
 * > 細かい修正(機能にはあまり関係しない部分)
 * Version 2.80 (08.May.1999) Version Number 2.75はSkip
 * > 電話回線品質の問題などでUploadの途中でFTP Errorが発生し、Upload失敗したFileを次回実行時に再度Uploadする機能の追加(Retry Failed File Function) (2.76 beta 1, 01.May.1999)
 * > Upload File CheckでDisabled指定したものを次回からもDefaultでDisabledにする機能の追加 (Remember Upload Status) (2.76 beta 2, 01.May.1999)
 * > `Disable Sound During Sequential Running'機能の追加 (2.76 beta 3, 01.May.1999)
 * > `Remember Upload Status'機能の不具合を修正(今回使用しない過去のFileのDataが保持されない問題) (2.76 beta 3, 01.May.1999)
 * > 細かい作り込み (2.76 beta 4, 02.May.1999)
 * > 各種Data File(Default.lst/Failed.lst)を消去する機能を追加 (2.76 beta 5, 03.May.1999)
 * > 新機能の不具合を修正(いろいろ) (2.76 beta 5, 03.May.1999)
 * > Site Name変更時にTakeout.lst同様Failed.lst/Disabled.lstのSite Nameも変更するように機能強化 (2.76 beta 6, 04.May.1999)
 * > DDF/RFF機能の不具合を修正 (2.76 beta 7, 07.May.1999)
 * > logging disabled時にcurrent directoryにdata fileを作成するように修正(仕様変更?) (2.76 beta 7, 07.May.1999)
 * > log directory作成の箇所を変更 (2.76 beta 7, 07.May.1999)
 * > Version 2.80公開 (08.May.1999)
 * Version 2.80 (08.May.1999) since 14.May.1999
 * > Main WindowからPasswordの項目を削除(それに伴う仕様変更) (2.81 beta 1, 14.May.1999 - 16.May.1999)
 * > Delete Site確認Windowのデザインの変更 (2.81 beta 1, 14.May.1999)
 * > 細かい修正等 (2.81 beta 1, 15.May.1999 -16.May.1999)
 * > `Compulsory Upload File' Functionの追加(基本的な部分) (2.81 beta 2, 08-09.Jun.1999)
 * > `Compulsory Upload File' Function作り込み (2.81 beta 3, 10.Jun.1999)
 * > `Compulsory Upload File' Function作り込み (2.81 beta 4, 16.Jun.1999)
 * > `Compulsory Upload File' Function作り込み (2.81 beta 5, 17.Jun.1999)
 * > Summaryの表示などを整理 (2.81 beta 5, 17.Jun.1999)
 * > 細かい修正 (2.81 beta 6, 22.Jun.1999)
 * > `Compulsory Upload File' Functiion作り込み(Language対応)。 (2.81 beta 7, 24.Jun.1999)
 * > Site削除時の不具合を修正 (2.81 beta 8, 27.Jun.1999)
 * > Jasmine起動前にEditor等でSiteの順番を変えても問題がなさそうな事を確認(継続) (2.81 beta 8, 27.Jun.1999)
 * > Sequential Running時のログを最後にまとめて表示出来るように仕様変更 (2.81 beta 9, 01.Jul.1999)
 * > 作り込み (2.81 beta 10, 05.Jul.1999)
 * > 作り込み (2.81 beta 11, 07.Jul.1999)
 * Version 2.85 (21.Jul.1999)
 * > 2.81 beta 11をそのままVersion 2.85として公開。
 * Version 2.85a (28.Aug.1999)
 * > DEMO用Registry Key登録。Time BombでRegistryを管理する (27-28.Aug.1999, 2.85a)
 *   次期バージョンで削除するかもしれないけれど...
 * Version 2.85b (29.Aug.1999)
 * > Jasmineの使用するWork Directoryを引数で指定出来るように仕様変更(機能追加)。WarpExpo99用 (29.Aug.1999, 2.85b)
 *   正式公開するかはもう少しテストをしてから決める。
 * Version 2.86 (04.Jan.2000)
 * > GUI関連のMinor Update。
 * > DEMO MODEの削除。
 * > 初期設定の細かい修正。
 * Version 2.90 (01.May.2000) since 29.Apr.2000
 * > Status Listの右クリックでその行全ての情報をContext BoxをPopupして表示するように機能強化(29.Apr.2000, 2.89 beta 1)。
 * > TakeoutのLocal Fileに無いFileを選択をボタンクリック一回で出来るように仕様を大幅変更(29.Apr.2000, 2.89 beta 1)。
 * > Registrationされている時にAbout画面を見るとRegistration Codeが消えてしまう不具合を修正(29.Apr.2000, 2.89 beta 1)。
 * > 細かい作り込み (30.Apr.2000, 2.89 beta 2)
 * > Language Fileの修正と細かい修正など (01.May.2000, 2.89 beta 3)
 * > Version 2.90公開 (01.May.2000)
 *   Failed Fileの管理機能やLog表示を別Windowにするなどの予定機能追加はVersion 3.00にて実装予定。
 * Version 3.00 (16.Sep.2000) since 23.Jul.2000
 * > SetPreferenceDataのWhile構文でotherwiseが無いというErrorが出たため、一部if文に変更 (2.91 beta 1, 23.Jul.2000)
 * > Language機能使用時にModeを変えた時などに変化するテキストも変化出来る様に仕様変更。2.90以前のLanguageファイルは使用出来ないので注意 (2.91 beta 2, 13.Aug.2000)
 * > Ribbonの色を変更(継続) (2.91 beta 2, 13.Aug.2000)
 * > - - - - - ここから2.99 betaに変更。完成版を3.00で公開予定のため。 - - - - -
 * > Log Viewerの追加 (2.99 beta 1, 19.Aug.2000)
 * > Log Viewer作り込み (2.99 beta 2, 20.Aug.2000)
 * > Log Fileの西暦表示を2桁から4桁に使用変更 (2.99 beta 2, 20.Aug.2000)
 * > Logを見た後にTakeoutを起動すると正しくデータが呼び出されない不具合を修正 (2.99 beta 3, 20.Aug.2000)
 * > Log Viewer不具合修正 (2.99 beta 4, 03.Sep.2000)
 * > Version 3.00公開 (16.Sep.2000)
 * Version 3.10 (04.Feb.2001) since 21.Oct.2000
 * > Logファイル消去時のErrorを修正 (3.01 beta 1, 21.Oct.2000)
 * > `HTML Key Exchange'機能の追加 (3.01 beta 2, 25.Nov.2000)
 *
 *            FILE SIZE   : %JSM_FILE_SIZE%     <- 元のファイルのサイズ。Uploadされるファイルの大きさではないので注意。
 *            UPLOAD DATE : %JSM_UPLOAD_DATE%
 *            UPLOAD TIME : %JSM_UPLOAD_TIME%
 *            UPDATE DATE : %JSM_UPDATE_DATE%
 *            UPDATE TIME : %JSM_UPDATE_TIME%
 *
 * > `HTML Keyword Exchange'機能の作り込み (3.01 beta 3, 26.Nov.2000)
 * > `New Site Window'の作り込み (3.01 beta 3, 26.Nov.2000)
 * > Preferenceのレイアウト調整 (3.01 beta 4, 02.Dec.2000)
 * > 細かい修正 time(n) → time("n") (3.01 beta 4, 03.Dec.2000)
 * > `HTML Key Exchange'機能で頭に%を2度付けると変換せずに%を一つ削る様に仕様変更 (3.01 beta 5, 06.Jan.2001)
 *   この仕様は単に開発者にのみにその使用目的があるため、このβバージョンは特に公開しない。
 * > `HTML Key Exchange'機能の作り込み (3.01 beta 5, 07.Jan.2001)
 * Version 3.20 (19.Jun.2001) since  07.Apr.2001
 * > `Manage Upload Files'機能の実装開始 (3.19 beta 0, 07.Apr.2001)
 * > `Manage Upload Files'機能の作り込み (3.19 beta 1, 12.Apr.2001)
 * > `Enhanced HTML Keyword Exchange'機能の実装 (3.19 beta 1, 12.Apr.2001)
 *
 *            FILE SIZE   : %JSM_FILE_SIZE=file name (full path)%
 *            UPDATE DATE : %JSM_UPDATE_DATE=file name (full path)%
 *            UPDATE TIME : %JSM_UPDATE_TIME=file name (full path)%
 *
 * > `Manage Upload Files'機能の作り込み/問題の修正 (3.19 beta 2, 13.Apr.2001) - SetDisabledUploadFiles
 * > `HTML Keyword Exchange'機能拡張(Date Separator, Month Indicationの設定追加) (3.19 beta 3, 14.Apr.2001)
 * > `Manage Upload Files'機能の仕様変更と名称を`Set Disabled Files'機能に変更 (3.19 beta 4, 15.Apr.2001)
 * > その他、引き続き作り込み (3.19 beta 4, 15.Apr.2001)
 * > `Enhanced HTML Keyword Exchange'機能の仕様変更 (3.19 beta 5, 18.Apr.2001)
 * > `Always Upload Files' Functionの追加 (3.19 beta 5, 18.Apr.2001)
 * > `Language'機能をNew Versionに対応 (3.19 beta 6, 19.Apr.2001)
 * > Site登録WindowでのCopy & Paste機能の追加 (3.19 beta 6, 19.Apr.2001)
 * > `Always Upload Files' Functionの実行間隔を指定出来るように機能強化 (3.19 beta 7, 22.Apr.2001)
 * > `Enhanced HTML Keyword Exchange'機能でFile Nameを相対Pathでも指定出来るように機能強化 (3.19 beta 8, 01.May.2001)
 *
 *            FILE SIZE   : %JSM_FILE_SIZE=file name%
 *            UPDATE DATE : %JSM_UPDATE_DATE=file name%
 *            UPDATE TIME : %JSM_UPDATE_TIME=file name%
 *
 * > `Enhanced HTML Keyword Exchange'機能で指定したFileが無い時にWARNINGをHTMLに表示する機能の追加 (3.19 beta 8, 01.May.2001)
 * > 細かい修正 (3.19 beta 9 early, 05.May.2001)
 * > Disabled Fileの名称をExcluded Fileに変更 (3.19 beta 9, 05.Jun.2001)
 * > `Always Upload File' Window, `Set Exclude Files' Windowの作り込み (Context Menu, File Check) (3.19 beta 9, 05.Jun.2001)
 * > `Run after compulsory upload file' の名称を `Before run, select compulsory upload file'に変更 (Roboのsuggestion) (3.19 beta 10. 08.Jun.2001) <- ほぼpre releaseなので公開しない
 * > Always Upload Files Window起動時の時間設定の不具合を修正 (3.19 beta 10, 09.Jun.2001)
 * > Version 3.20 Release (19.Jun.2001)
 * Version 3.30 (16.Feb.2002) since 08.Jul.2001
 * > Change UPPER to lower機能が正しく機能しない不具合の修正 (3.29 beta 1, 08.Jul.2001)
 * > `Enhanced HTML Keyword Exchange'機能のKey追加 (3.29 beta 1, 08.Jul.2001)
 *
 *            UPLOAD YEAR : %JSM_UPLOAD_DATE%
 *            UPDATE YEAR : %JSM_UPDATE_YEAR%
 *
 * > FtpPutのreturn codeとHTML Keyword Changeのreturn codeが同じであったため、FtpPutのreturn codeをftpput_rcに変更 (3.29 beta 2, 15.Jul.2001)
 * > Change UPPER to lower機能の調整 (3.29 beta 2, 15.Jul.2001)
 * > UPPER to lower機能使用時のTakeoutの不具合の修正 (3.29 beta 3, 01.Aug.2001)
 * > 上記Takeout機能の不具合の修正に伴う不具合の修正 (3.29 beta 4, 05.Aug.2001)
 * > Uploadに失敗したファイルを別Windowでまとめて表示するように機能追加 (3.29 beta 4, 05.Aug.2001)
 * > 作り込み (3.29 beta 5, 12.Aug.2001)
 * > Excluded File関連(Disbaled DirectoryﾌファイルがUploadされる等)の不具合の修正 (3.29 beta 6, 17.Sep.2001)
 * > `Enhanced HTML Keyword Exchange'機能のKey追加 (3.29 beta 8, 13.Oct.2001)
 *
 *            Enhanced HTML Keyword Exchange for Multiple Files - LATEST UPDATED DATE/TIME from among selected files
 *
 *            %JSM_LATEST=file_name_1,file_name_2,...,file_name_n:TYPE%
 *            * TYPE = DATE, TIME, DATETIME, ALL, BOTH (DATETYPE=ALL=BOTH=null)
 *
 * > New Site登録WinowのCut & PasteのContext Menuを廃止 (3.29 beta 9, 27.Oct.2001) - not released
 * > パラメータの設定に関らず、`Change UPPER to lower'が常に実行されてしまう不具合を修正 (3.29 beta 9, 22.Dec.2001)
 * > Language FileのUpdate (WindowのタイトルもLanguage Fileで変更するように拡張) (3.29 beta 10, 29.Dec.2001)
 * > その他、細かい修正、調整など (3.29 beta 10, 29.Dec.2001)
 * > `Upload File Check'機能がEnabledの時の不具合の修正 (3.29 beta 11, 23.Jan.2002)
 * > `Enhanced HTML Keyword Exchange for Multiple File'機能のFile間にSpaceがあると正しくFileを認識しない不具合を修正 (3.29 beta 12, 03.Feb.2002)
 * > Version 3.30 Release (16.Feb.2002)
 * Version 3.31 (15.Sep.2002) since 12.Sep.2002
 * > `Enhanced HTML Keyword Exchange'のKeywordにLocal Fileでコメントアウト出来るように機能追加 (3.31 beta 1)
 *   %<!--*****-->%  が %*****%に変換され、日付/時間に再変換される。
 * > Version 3.31 Release (15.Sep.2002)
 * Version 4.00 (12.Nov.2004) since 05.Oct.2002
 * > Enhanced HTML Keyword Exchangeにおいて相対Pathが正しく認識されない問題を修正 (3.32 beta 1)
 * > 上記問題を修正時に発生した問題を修正 (3.32 beta 2)
 * > `Set Compulsory Upload File'と`Takeout' windowsのファイル選択エリアの仕様をExtended Selectを使用しない仕様に変更 (3.32 beta 3)
 * > `Context Menu'もLanguage Fileで対応出来るように仕様変更 (3.32 beta 4)
 * > 上記機能をLanguage Fileに項目を追加するだけで対応するように仕様変更(余計な機能を追加しない状態に戻した) (3.32 beta 5 12.Oct.2002)
 * > `Check File'と`Select Compulsory Upload File'のキャンセルの仕様を変更 (3.32 beta 6 13.Oct.2002)
 * > `Failed File List' windowもLanguage Fileに対応 (3.32 beta 7, 13.Oct.2002)
 * > TakeoutとLog Viewerの仕様強化 (3.32 beta 8, 17.Oct.2002)
 * > `Timer Run' Functionの作成開始 (3.99 beta 1) since 18.Oct.2002 
 * > SoundとTimerの画像差替え (3.99 beta 2, 23.Nov.2002) Graphics by KUDIRAMO
 * > Timer Run Statusを表示するように仕様強化 (3.99 beta 2, 23.Nov.2002)
 * > `Enhanced Multiple HTML Keyword Exchange'の不具合の修正(指定ファイルがない場合のエラー表記を正しくしていなかった問題) (3.99 beta 3, 09.Nov.2002)
 * > `Timer Run' Functionの機能強化 (3.99 beta 4, 16.Feb.2003)
 * > 3.99 Beta 4での`Timer Run' Functionの不具合を修正 (3.99 beta 5, 22.Feb.2003)
 * > Timer Run Counterの表示を 00 00:00:00 から 00d 00:00:00 に変更(日付にdを添付) (3.99 beta 5, 22.Feb.2003)
 * > `Timer Run' Functionに`Run at Startup (`Run Regularly' only)'を追加 (3.99 beta 5, 22.Feb.2003)
 * > `Timer Run' Functionの不具合を修正(PB_Run_ClickのMain RoutineをSub Routine化 (3.99 beta 6, 08.Mar.2003)
 * > Log Viwerで選択しているファイルの日付、時間、サイズ等を表示するように仕様変更 (3.99 beta 7, 09.Mar.2003)
 * > Exitボタンを押したときにExitするのかMinimizeするのかを選択出来るように仕様変更 (3.99 beta 8, 15.Mar.2003)
 * > PreferencesのManage Upload Files以下のCheck Boxの動作不具合を修正 (3.99 beta 8, 15.Mar.2003)
 * > 登録サイトがない場合に発生する不具合の修正 (2.99 beta 9, 21.Mar.2003)
 * > COPY MODEでローカル・ファイルが相手側にない場合、そのファイルが前回よりアップデートされていない時はコピーするように機能追加 (3.99 beta 10, 20.Jul.2003)
 * > Timer Run機能拡張 (3.99 beta 11, 25.Jul.2003)
 * > 調整 (3.99 beta 12, 26.Jul.2003)
 * > 新規サイト登録直後にRunさせるとJasmineが落ちる不具合を修正 (3.99 beta 13, 27.Jul.2003)
 * > ウィンドウのデザインを正方形に調整 (3.99 beta 13, 27.Jul.2003)
 * > `Failed File'リスト削除しても再度`Failed File'リストを見るとデータが残っている問題を修正 (3.99 beta 13, 27.Jul.2003)
 * > 低解像度のOS/2でもきちんと表示するようにレイアウト調整 (3.99 beta 14, 31.Jul.2003)
 * > Exitボタンを押したら即終了するように仕様を元に戻した (3.99 beta 14, 31.Jul.2003) - ドイツ語版Languae Fileの作者Oliverのリクエストによる。
 * > 細かい不具合の修正 (3.99 beta 14, 31.Jul.2003)
 * > `COPY Mode'の仕様変更 (Target Fileの日付からCopyするかしないか判断するように仕様変更) (3.99 beta 15, 03.Aug.2003)
 * > `Copy Mode'時のTakeoutの仕様も3.00 beta 15に合わせるように変更 (3.99 beta 16, 04.Oct.2003)
 * > `Takeout'と`Exit Command'をDefault Enabledで固定。Preferenceから該当項目を外した (3.99 beta 17, 12.Oct.2003)
 * > Failed FileにTARGET_FILE_NAMEが記録されないように修正 (3.99 beta 18, 03.Apr.2004) 
 * > 細かい不具合を修正 (Takeout Windowの`Clear Selected File' ButtonのEnabled/Disabledに関して) (3.99 beta 19, 07.May.2004)
 * > Main部"_VREHalt:"の"call VRDestroy _VREPrimaryWindow"をComment Out。OS/2終了時に出るエラー回避 (3.99 beta 20, 23.Jul.2004)
 * > TakeoutにAuto機能を追加。ただし、単に`Select Files NOT Available...'と'Takeout!'のボタンをキックするだけであまりCoolではない。これを解決するには、新たにTakeout2を開発する必要がありそう (3.99 beta 21, 22.Aug.2004)
 * > Site Name変更時にTimer Runに登録されているSite Nameを変更しない不具合を修正 (3.99 beta 21, 26.Aug.2004) 
 * > Version 4.00をFreewareとして公開 (4.00, 12.Nov.2004)
 * Version 4.xx (  .   .2004) since 01.Oct.2004
 * > FTP Mode Takeoutの`Select Files NOT Available at Local/Source Directory'機能のTune Up (4.01 beta 1, 01.Oct.2004)
 * > TakeoutのTune Up (`Select Files NOT Available at Local/Source Directory'でLocal DirectoryをList Upする箇所をComment Out) (4.01 beta 2, 21.Oct.2004)
 * > "AUtoTakeout"機能の追加 (4.01 beta 3, 24.Oct.2004) 
 * > "AutoTakeout"機能のTune Up (4.01 beta 4, 25.Oct.2004)
 * > "AutoTakeout"機能のTune Up (4.01 beta 5, 30.Oct.2004 - 03.Nov.2004)
 * 
 *
 *
 */
Main:
/*  Process the arguments.
    Get the parent window.
*/
    debug_mode = 0

    parse source . calledAs .
    parent = ""
    argCount = arg()
    argOff = 0
    if( calledAs \= "COMMAND" )then do
        if argCount >= 1 then do
            parent = arg(1)
            argCount = argCount - 1
            argOff = 1
        end
    end; else do
        call VROptions 'ImplicitNames'
    end
    InitArgs.0 = argCount
    if( argCount > 0 )then do i = 1 to argCount
        InitArgs.i = arg( i + argOff )
    end
    drop calledAs argCount argOff

/*  Load the windows
*/
    call VRInit
    parse source . . spec
    _VREPrimaryWindowPath = ,
        VRParseFileName( spec, "dpn" ) || ".VRW"
    _VREPrimaryWindow = ,
        VRLoad( parent, _VREPrimaryWindowPath )
    drop parent spec
    if( _VREPrimaryWindow == "" )then do
        call VRMessage "", "Cannot load window:" VRError(), ,
            "Error!"
        _VREReturnValue = 32000
        signal _VRELeaveMain
    end

/*  Process events
*/
    call Init
    signal on halt
    do while( \ VRGet( _VREPrimaryWindow, "Shutdown" ) )
        _VREEvent = VREvent()
        interpret _VREEvent
    end
_VREHalt:
    _VREReturnValue = Fini()

/* Comment Out : 23.Jul.2004 - OS/2終了時、Errorが発生するため */
/*
    call VRDestroy _VREPrimaryWindow
*/
_VRELeaveMain:
    call VRFini
exit _VREReturnValue

VRLoadSecondary:
    __vrlsWait = abbrev( 'WAIT', translate(arg(2)), 1 )
    if __vrlsWait then do
        call VRFlush
    end
    __vrlsHWnd = VRLoad( VRWindow(), VRWindowPath(), arg(1) )
    if __vrlsHWnd = '' then signal __vrlsDone
    if __vrlsWait \= 1 then signal __vrlsDone
    call VRSet __vrlsHWnd, 'WindowMode', 'Modal'
    __vrlsTmp = __vrlsWindows.0
    if( DataType(__vrlsTmp) \= 'NUM' ) then do
        __vrlsTmp = 1
    end
    else do
        __vrlsTmp = __vrlsTmp + 1
    end
    __vrlsWindows.__vrlsTmp = VRWindow( __vrlsHWnd )
    __vrlsWindows.0 = __vrlsTmp
    do while( VRIsValidObject( VRWindow() ) = 1 )
        __vrlsEvent = VREvent()
        interpret __vrlsEvent
    end
    __vrlsTmp = __vrlsWindows.0
    __vrlsWindows.0 = __vrlsTmp - 1
    call VRWindow __vrlsWindows.__vrlsTmp
    __vrlsHWnd = ''
__vrlsDone:
return __vrlsHWnd

/*:VRX         AddCompulsoryUploadFile
*/
/* `Always Upload Files' Functionにも対応 (18.Apr.2001) */
AddCompulsoryUploadFile:
if debug_mode = 1 then say "AddCompulsoryUploadFile"

    arg_text = arg(1)

    j = target_file_name.0
    tf_num = j
    ig_num = ignore_file_num
    duplicate_compulspory_upload_file_num = 0
    do i = 1 to compulsory_upload_file.0
        /* 1.   Arrange Target File List */
        flug = 0

        do m = 1 to tf_num
            if compulsory_upload_file.i = target_file_name.m then do
                duplicate_compulspory_upload_file_num = duplicate_compulspory_upload_file_num + 1
                flug = 1
                leave
            end
        end

        if flug = 0 then do
            j = j + 1
            target_file_name.j = compulsory_upload_file.i
            target_file_size.j = compulsory_upload_file_size.i

            upload_status.j = "Enabled"
        end


        /* 2.   Arrange Ignore File List */
        n = 0
        do m = 1 to ig_num
            parse var ignore_file_name.m dummy "(Ignore" .
            dummy = strip(dummy)
            if compulsory_upload_file.i =  dummy then do
                nop
            end
            else do
                n = n + 1
                ifn.n = ignore_file_name.m
            end
        end
        ifn.0 = n
        do m = 1 to ifn.0
            ignore_file_name.m = ifn.m
        end
        ignore_file_name.0 = ifn.0
        ignore_file_num = ifn.0
    end
    target_file_name.0 = j
    target_file_size.0 = j
    upload_status.0    = j

    cufn  = compulsory_upload_file.0
    dcufn = duplicate_compulspory_upload_file_num

    dup = ""
    if dcufn > 0 then dup = "(duplicate : "dcufn")"

    if ftp_transfer_mode = "FTP" then do
        if arg_text = "Compulsory" then do
            call SetStatus ">Compulsory upload file number : "cufn" "dup
        end
        else if arg_text = "Always" then do
            call SetStatus ">Always upload file number : "cufn" "dup
        end
    end
    if ftp_transfer_mode = "COPY" then do
        if arg_text = "Compulsory" then do
            call SetStatus ">Compulsory copy file number : "cufn" "dup
        end
        else if arg_text = "Always" then do
            call SetStatus ">Always copy file number : "cufn" "dup
        end
    end

    /* 次の使用時の為に初期化する */
    compulsory_upload_file.0      = 0
    compulsory_upload_file_size.0 = 0

return

/*:VRX         CB_AutoTakeout_Click
*/
CB_AutoTakeout_Click: 

    set = VRGet( "CB_AutoTakeout", "Set" )
    if set = 1 then AutoTakeout = "Enabled"
    else AutoTakeout = "Disabled"

return

/*:VRX         CB_ChangeUpperToLower_Click
*/
CB_ChangeUpperToLower_Click:
if debug_mode = 1 then say "CB_ChangeUpperToLower_Click"

    set = VRGet( "CB_ChangeUpperToLower", "Set" )

    if set = 1 then do
        ChangeUpperToLower = "Yes"
    end
    else do
        ChangeUpperToLower = "No"
    end

return

/*:VRX         CB_CloseCommand_Click
*/
CB_CloseCommand_Click:
if debug_mode = 1 then say "CB_CloseCommand_Click"

    set = VRGet( "CB_CloseCommand", "Set" )

    select
        when set = 1 then do
            CloseCommandMode = "Enabled"
            ok = VRSet( "DT_CloseCommand", "Enabled", 1 )
            ok = VRSet( "EF_CloseCommand", "Enabled", 1 )
        end
        when set = 0 then do
            CloseCommandMode = "Disabled"
            ok = VRSet( "DT_CloseCommand", "Enabled", 0 )
            ok = VRSet( "EF_CloseCommand", "Enabled", 0 )
        end
    end

return

/*:VRX         CB_CompulsoryUploadFile_Click
*/
CB_CompulsoryUploadFile_Click:
if debug_mode = 1 then say "CB_CompulsoryUploadFile_Click"

    set = VRGet( "CB_CompulsoryUploadFile", "Set" )

    if set = 0 then do
        CompulsoryUploadFile = "Disabled"
    end
    else if set = 1 then do
        CompulsoryUploadFile = "Enabled"
    end

return

/*:VRX         CB_Create_Object_at_Startup_Folder_Click
*/
CB_Create_Object_at_Startup_Folder_Click: 
if debug_mode = 1 then say "CB_Copy_Shadow_to_Startup_Folder_Click"

    set = VRGet( "CB_Create_Object_at_Startup_Folder", "Set" )

    if set = 1 then do
        CopyShadowToStartupFolder = "Yes"

        ok = VRSet( "CB_Minimized_Startup", "Enabled", 1 )

        parameter = "EXENAME="JasmineDirectory"\Jasmine.exe;STARTUPDIR="JasmineDirectory";OBJECTID=<JASMINE_STARTUP>"
        rc = SysCreateObject("WPProgram", "Jasmine Startup", "<WP_START>", parameter, "u" )
    end
    else do
        CopyShadowToStartupFolder = "No"

        ok = VRSet( "CB_Minimized_Startup", "Enabled", 0 )

        rc = SysDestroyObject( "<JASMINE_STARTUP>" )
    end

return

/*:VRX         CB_DisableSoundDuringSequentialRunning_Click
*/
CB_DisableSoundDuringSequentialRunning_Click:
if debug_mode = 1 then say "CB_DisableSoundAtMultiRun_Click"

    set = VRGet( "CB_DisableSoundDuringSequentialRunning", "Set" )

    if set = 1 then do
        DisableSoundDuringSequentialRunning = "Yes"
    end
    else if set = 0 then do
        DisableSoundDuringSequentialRunning = "No"
    end

return

/*:VRX         CB_HtmlKeywordExchange_Click
*/
CB_HtmlKeywordExchange_Click:
if debug_mode = 1 then say "CB_HtmlKeywordExchange_Click"

    set = VRGet( "CB_HtmlKeywordExchange", "Set" )

    if set = 1 then do
        HtmlKeywordExchangeFunction = "Enabled"

        ok = VRSet( "GB_HKE_FileSize",           "Enabled", 1 )
        ok = VRSet( "RB_HKE_FileSize_Bit",       "Enabled", 1 )
        ok = VRSet( "RB_HKE_FileSize_Byte",      "Enabled", 1 )
        ok = VRSet( "RB_HKE_FileSize_KByte",     "Enabled", 1 )
        ok = VRSet( "GB_HKE_DateStyle",          "Enabled", 1 )
        ok = VRSet( "RB_HKE_DateStyle_yyyymmdd", "Enabled", 1 )
        ok = VRSet( "RB_HKE_DateStyle_ddmmyyyy", "Enabled", 1 )
        ok = VRSet( "RB_HKE_DateStyle_mmddyyyy", "Enabled", 1 )

        ok = VRSet( "GB_HKE_DateSeparator",                "Enabled", 1 )
        ok = VRSet( "RB_HKE_DateSeparator_Slash",          "Enabled", 1 )
        ok = VRSet( "RB_HKE_DateSeparator_Dot",            "Enabled", 1 )
        ok = VRSet( "GB_HKE_MonthIndication",              "Enabled", 1 )
        ok = VRSet( "RB_HKE_DateMonthIndication_Number",   "Enabled", 1 )
        ok = VRSet( "RB_HKE_DateMonthIndication_Alphabet", "Enabled", 1 )
    end
    else do
        HtmlKeywordExchangeFunction = "Disabled"

        ok = VRSet( "GB_HKE_FileSize",           "Enabled", 0 )
        ok = VRSet( "RB_HKE_FileSize_Bit",       "Enabled", 0 )
        ok = VRSet( "RB_HKE_FileSize_Byte",      "Enabled", 0 )
        ok = VRSet( "RB_HKE_FileSize_KByte",     "Enabled", 0 )
        ok = VRSet( "GB_HKE_DateStyle",          "Enabled", 0 )
        ok = VRSet( "RB_HKE_DateStyle_yyyymmdd", "Enabled", 0 )
        ok = VRSet( "RB_HKE_DateStyle_ddmmyyyy", "Enabled", 0 )
        ok = VRSet( "RB_HKE_DateStyle_mmddyyyy", "Enabled", 0 )

        ok = VRSet( "GB_HKE_DateSeparator",                "Enabled", 0 )
        ok = VRSet( "RB_HKE_DateSeparator_Slash",          "Enabled", 0 )
        ok = VRSet( "RB_HKE_DateSeparator_Dot",            "Enabled", 0 )
        ok = VRSet( "GB_HKE_MonthIndication",              "Enabled", 0 )
        ok = VRSet( "RB_HKE_DateMonthIndication_Number",   "Enabled", 0 )
        ok = VRSet( "RB_HKE_DateMonthIndication_Alphabet", "Enabled", 0 )
    end

return

/*:VRX         CB_IgnoreFileExtension_Click
*/
CB_IgnoreFileExtension_Click:
if debug_mode = 1 then say "CB_IgnoreFileExtension_Click"

    set = VRGet( "CB_IgnoreFileExtension", "Set" )

    select
        when set = 1 then do
            IgnoreFileExtensionMode = "Enabled"

            ok = VRSet( "Combo_IgnoreFileExtensionList", "Enabled", 1 )
            ok = VRSet( "PB_AddIgnoreFileExtension",     "Enabled", 1 )
            ok = VRSet( "PB_DeleteIgnoreFileExtension",  "Enabled", 1 )
            ok = VRSet( "PB_ClearIgnoreFileExtension",   "Enabled", 1 )

            ok = VRSet( "Combo_IgnoreFileExtensionList", "BackColor", "<default>" )
            ok = VRSet( "Combo_IgnoreFileExtensionList", "ForeColor", "<default>" )

            ok = VRSet( "CB_ShowIgnoredFileList", "Enabled", 1 )
        end
        when set = 0 then do
            IgnoreFileExtensionMode = "Disabled"

            ok = VRSet( "Combo_IgnoreFileExtensionList", "Enabled", 0 )
            ok = VRSet( "PB_AddIgnoreFileExtension",     "Enabled", 0 )
            ok = VRSet( "PB_DeleteIgnoreFileExtension",  "Enabled", 0 )
            ok = VRSet( "PB_ClearIgnoreFileExtension",   "Enabled", 0 )

            ok = VRSet( "Combo_IgnoreFileExtensionList", "BackColor", "PaleGray" )
            ok = VRSet( "Combo_IgnoreFileExtensionList", "ForeColor", "DarkGray" )

            ok = VRSet( "CB_ShowIgnoredFileList", "Enabled", 0 )
        end
    end

return

/*:VRX         CB_Log_Click
*/
CB_Log_Click:
if debug_mode = 1 then say "CB_Log_Click"

    set = VRGet( "CB_Log", "Set" )

    if set = 1 then Logging = "Enabled"
    if set = 0 then Logging = "Disabled"

    call SetLogging Logging

    call SetDataFileFullPathName

    call WriteInitialFile

return

/*:VRX         CB_LogonRetry_Click
*/
CB_LogonRetry_Click:
if debug_mode = 1 then say "CB_LogonRetry_Click"

    set = VRGet( "CB_LogonRetry", "Set" )

    if set = 1 then do
        LogonRetry = "Enabled"
        ok = VRSet( "SPIN_LogonRetry", "Visible", 1 )
    end
    else do
        LogonRetry = "Disabled"
        ok = VRSet( "SPIN_LogonRetry", "Visible", 0 )
    end

return

/*:VRX         CB_ManageUploadFiles_Click
*/
CB_ManageUploadFiles_Click:

    set = VRGet( "CB_ManageUploadFiles", "Set" )

    if set = 1 then do
        ManageUploadFiles = "Enabled"

        ok = VRSet( "PB_SetExcludedFiles",     "Enabled", 1 )
        ok = VRSet( "CB_UploadFileCheck",      "Enabled", 1 )

        if UploadFileCheck = "Yes" then do
            ok = VRSet( "CB_RememberUploadStatus", "Enabled", 1 )
        end
        else do
            ok = VRSet( "CB_RememberUploadStatus", "Enabled", 0 )
        end
    end
    else do
        ManageUploadFiles = "Disabled"

        ok = VRSet( "PB_SetExcludedFiles",     "Enabled", 0 )
        ok = VRSet( "CB_UploadFileCheck",      "Enabled", 0 )
        ok = VRSet( "CB_RememberUploadStatus", "Enabled", 0 )
    end

return

/*:VRX         CB_Minimized_Startup_Click
*/
CB_Minimized_Startup_Click: 
if debug_mode = 1 then say "CB_Start_Minimized_Click"

    set = VRGet( "CB_Minimized_Startup", "Set" )

    if set = 1 then do
        StartMinimized = "Yes"
    end
    else do
        StartMinimized = "No"
    end

return

/*:VRX         CB_RememberUploadStatus_Click
*/
CB_RememberUploadStatus_Click:
if debug_mode = 1 then say "CB_RememberUploadStatus_Click"

    set = VRGet( "CB_RememberUploadStatus", "Set" )

    if set = 1 then do
        RememberUploadStatus = "Enabled"
    end
    else do
        RememberUploadStatus = "Disabled"
    end

return


/*:VRX         CB_RetryFailedFile_Click
*/
CB_RetryFailedFile_Click:
if debug_mode = 1 then say "CB_RetryFailedFile_Click"

    set = VRGet( "CB_RetryFailedFile", "Set" )

    if set = 1 then do
        RetryFailedFile = "Enabled"
    end
    else if set = 0 then do
        RetryFailedFile = "Disabled"
    end

return

/*:VRX         CB_RunAtStartup_Click
*/
CB_RunAtStartup_Click: 
if debug_mode = 1 then say "CB_RunAtStartup"

    set = VRGet( "CB_RunAtStartup", "Set" )

    if set = 1 then do
        RunAtStartup = "Enabled"
    end
    else do
        RunAtStartup = "Disabled"
    end

return

/*:VRX         CB_SequentialRunMode_Click
*/
CB_SequentialRunMode_Click:
if debug_mode = 1 then say "CB_SequentialRunMode_Click"

    set = VRGet( "CB_SequentialRunMode", "Set" )
    select
        when set = 1 then do
            SequentialRunMode = "Enabled"
        end
        when set = 0 then do
            SequentialRunMode = "Disabled"
        end
    end

    call SetSequentialRunModeParams SequentialRunMode

return

/*:VRX         CB_Show_Timer_Counter_Click
*/
CB_Show_Timer_Counter_Click: 
if debug_mode = 1 then say "CB_Show_Timer_Counter_Click"

    set = VRGet( "CB_Show_Timer_Counter", "Set" )

    if set = 1 then do
        ShowTimerCounter = "Yes"
        ok = VRSet( "TM_TimerRun_Timer", "Visible", 1 )
    end
    else do
        ShowTimerCounter = "No"
        ok = VRSet( "TM_TimerRun_Timer", "Visible", 0 )
    end

return

/*:VRX         CB_ShowIgnoredFileList_Click
*/
CB_ShowIgnoredFileList_Click:
if debug_mode = 1 then say "CB_ShowIgnoredFileList_Click"

    set = VRGet( "CB_ShowIgnoredFileList", "Set" )
    if      set = 1 then ShowIgnoredFileList = "Enabled"
    else if set = 0 then ShowIgnoredFileList = "Disabled"

return

/*:VRX         CB_SilentStatusIndication_Click
*/
CB_SilentStatusIndication_Click:
if debug_mode = 1 then say "CB_SilentStatusIndication_Click"

    set = VRGet( "CB_SilentStatusIndication", "Set" )

    if set = 1 then do
        SilentStatusIndication = "Enabled"
    end
    else if set = 0 then do
        SilentStatusIndication = "Disabled"
    end

return

/*:VRX         CB_Sound_End_Click
*/
CB_Sound_End_Click:
if debug_mode = 1 then say "CB_Sound_End_Click"

    set = VRGet( "CB_Sound_End", "Set" )

    if set = 1 then do
        ok = VRSet( "EF_End", "Enabled", 1 )
    end
    if set = 0 then do
        ok = VRSet( "EF_End", "Enabled", 0 )
    end

return

/*:VRX         CB_Sound_Logon_Failed_Click
*/
CB_Sound_Logon_Failed_Click:
if debug_mode = 1 then say "CB_Sound_Logon_Failed_Click"

    set = VRGet( "CB_Sound_Logon_Failed", "Set" )

    if set = 1 then do
        ok = VRSet( "EF_Logon_Failed", "Enabled", 1 )
    end
    if set = 0 then do
        ok = VRSet( "EF_Logon_Failed", "Enabled", 0 )
    end

return

/*:VRX         CB_Sound_Logon_Successfully_Click
*/
CB_Sound_Logon_Successfully_Click:
if debug_mode = 1 then say "CB_Sound_Logon_Successfly_Click"

    set = VRGet( "CB_Sound_Logon_Successfully", "Set" )

    if set = 1 then do
        ok = VRSet( "EF_Logon_Successfully", "Enabled", 1 )
    end
    if set = 0 then do
        ok = VRSet( "EF_Logon_Successfully", "Enabled", 0 )
    end

return

/*:VRX         CB_Sound_No_File_Click
*/
CB_Sound_No_File_Click:
if debug_mode = 1 then say "CB_Sound_No_File_Click"

    set = VRGet( "CB_Sound_No_File", "Set" )

    if set = 1 then do
        ok = VRSet( "EF_No_File", "Enabled", 1 )
    end
    if set = 0 then do
        ok = VRSet( "EF_No_File", "Enabled", 0 )
    end

return

/*:VRX         CB_Sound_Save_Log_Click
*/
CB_Sound_Save_Log_Click:
if debug_mode = 1 then say "CB_Sound_Save_Log_Click"

    set = VRGet( "CB_Sound_Save_Log", "Set" )

    if set = 1 then do
        ok = VRSet( "EF_Save_Log", "Enabled", 1 )
    end
    if set = 0 then do
        ok = VRSet( "EF_Save_Log", "Enabled", 0 )
    end

return

/*:VRX         CB_Sound_Start_Click
*/
CB_Sound_Start_Click:
if debug_mode = 1 then say "CB_Sound_Start_Click"

    set = VRGet( "CB_Sound_Start", "Set" )

    if set = 1 then do
        ok = VRSet( "EF_Start", "Enabled", 1 )
    end
    if set = 0 then do
        ok = VRSet( "EF_Start", "Enabled", 0 )
    end

return

/*:VRX         CB_StatusFileSize_Click
*/
CB_StatusFileSize_Click:
if debug_mode = 1 then say "CB_StatusFileSize_Click"

    set = VRGet( "CB_StatusFileSize", "Set" )

    select
        when set = 1 then do
            StatusFileSize = "Enabled"
        end
        when set = 0 then do
            StatusFileSize = "Disabled"
        end
    end

return

/*:VRX         CB_StatusTransferMode_Click
*/
CB_StatusTransferMode_Click:
if debug_mode = 1 then say "CB_StatusTransferMode_Click"

    set = VRGet( "CB_StatusTransferMode", "Set" )

    select
        when set = 1 then do
            StatusTransferMode = "Enabled"
        end
        when set = 0 then do
            StatusTransferMode = "Disabled"
        end
    end

return

/*:VRX         CB_StatusUploadSummary_Click
*/
CB_StatusUploadSummary_Click:
if debug_mode = 1 then say "CB_StatusUploadSummary_Click"

    set = VRGet( "CB_StatusUploadSummary", "Set" )

    select
        when set = 1 then do
            StatusUploadSummary = "Enabled"
        end
        when set = 0 then do
            StatusUploadSummary = "Disabled"
        end
    end

return

/*:VRX         CB_Takeout_Click
*/
CB_Takeout_Click:
if debug_mode = 1 then say "CB_Takeout_Click"

    set = VRGet( "CB_Takeout", "Set" )

    select
        when set = 1 then do
            Takeout = "Enabled"
            ok = VRSet( "PB_Takeout", "Visible", 1 )
        end
        when set = 0 then do
            Takeout = "Disabled"
            ok = VRSet( "PB_Takeout", "Visible", 0 )
        end
    end


return

/*:VRX         CB_UploadFileCheck_Click
*/
CB_UploadFileCheck_Click:
if debug_mode = 1 then say "CB_UploadFileCheck_Click"

    set = VRGet( "CB_UploadFileCheck", "Set" )

    if set = 1 then do
        UploadFileCheck = "Yes"
        ok = VRSet( "CB_RememberUploadStatus", "Enabled", 1 ) 
    end
    else do
        UploadFileCheck = "No"
        ok = VRSet( "CB_RememberUploadStatus", "Enabled", 0 ) 
    end

return

/*:VRX         ChangeFileNameUpperToLower
*/
ChangeFileNameUpperToLower:
if debug_mode = 1 then say "ChangeFileNameUpperToLower"

    parse arg utol_target

    utol_target = translate(utol_target, "a", "A")
    utol_target = translate(utol_target, "b", "B")
    utol_target = translate(utol_target, "c", "C")
    utol_target = translate(utol_target, "d", "D")
    utol_target = translate(utol_target, "e", "E")
    utol_target = translate(utol_target, "f", "F")
    utol_target = translate(utol_target, "g", "G")
    utol_target = translate(utol_target, "h", "H")
    utol_target = translate(utol_target, "i", "I")
    utol_target = translate(utol_target, "j", "J")
    utol_target = translate(utol_target, "k", "K")
    utol_target = translate(utol_target, "l", "L")
    utol_target = translate(utol_target, "m", "M")
    utol_target = translate(utol_target, "n", "N")
    utol_target = translate(utol_target, "o", "O")
    utol_target = translate(utol_target, "p", "P")
    utol_target = translate(utol_target, "q", "Q")
    utol_target = translate(utol_target, "r", "R")
    utol_target = translate(utol_target, "s", "S")
    utol_target = translate(utol_target, "t", "T")
    utol_target = translate(utol_target, "u", "U")
    utol_target = translate(utol_target, "v", "V")
    utol_target = translate(utol_target, "w", "W")
    utol_target = translate(utol_target, "x", "X")
    utol_target = translate(utol_target, "y", "Y")
    utol_target = translate(utol_target, "z", "Z")

return utol_target

/*:VRX         ChangeHkeDateMonthIndication
*/
ChangeHkeDateMonthIndication:
if debug_mode = 1 then say "ChangeHkeDateMonthIndication"

    arg arg_mm

    if      arg_mm = "01" then ret_mm = "Jan"
    else if arg_mm = "02" then ret_mm = "Feb"
    else if arg_mm = "03" then ret_mm = "Mar"
    else if arg_mm = "04" then ret_mm = "Apr"
    else if arg_mm = "05" then ret_mm = "May"
    else if arg_mm = "06" then ret_mm = "Jun"
    else if arg_mm = "07" then ret_mm = "Jul"
    else if arg_mm = "08" then ret_mm = "Aug"
    else if arg_mm = "09" then ret_mm = "Sep"
    else if arg_mm = "10" then ret_mm = "Oct"
    else if arg_mm = "11" then ret_mm = "Nov"
    else if arg_mm = "12" then ret_mm = "Dec"

return ret_mm

/*:VRX         ChangeRemoteDirectory
*/
ChangeRemoteDirectory:
if debug_mode = 1 then say "ChangeRemoteDirectory"

    if dir_num > 0 then do
        parse var dir_name d.1  "\" d.2  "\" d.3  "\" d.4  "\" d.5  "\" d.6  "\",
                           d.7  "\" d.8  "\" d.9  "\" d.10 "\" d.11 "\" d.12 "\",
                           d.13 "\" d.14 "\" d.15 "\" d.16 "\" d.17 "\" d.18 "\",
                           d.19 "\" d.20 "\" d.21 "\" d.22 "\" d.23 "\" d.24 "\",
                           d.25 "\" d.26 "\" d.27 "\" d.28 "\" d.29 "\" d.30

        do dirs = 1 to dir_num
/* FtpSysするとどうもStandard Outに出力がある模様(特に機能的に問題があるわけではない) */
say "----- Call FtpChDir() ----- DIR="d.dirs
            rc = FtpChDir(d.dirs)
say "----- End of FtpChDir() -----"

            if JasmineMode = "Upload" then do
                if rc <> 0 then do
/* FtpSysするとどうもStandard Outに出力がある模様(特に機能的に問題があるわけではない) */
say "----- Call FtpMkDir() ----- DIR="d.dirs
                    rc = FtpMkDir(d.dirs)
say "----- End of FtpMkDir() -----"

                    call SetStatus ">Make directory ["d.dirs"]"

                    make_directory = "Yes"

/* FtpSysするとどうもStandard Outに出力がある模様(特に機能的に問題があるわけではない) */
say "----- Call FtpChDir() ----- DIR="d.dirs
                    rc = FtpChDir(d.dirs)
say "----- End of FtpChDir() -----"
                end
            end
        end
    end

return

/*:VRX         ClearFtpSiteDetail
*/
ClearFtpSiteDetail:
if debug_mode = 1 then say "ClearFtpSiteDetail"

    ok = VRSet( "EF_Mode",            "Value", "" )
    ok = VRSet( "DDCB_FtpSiteList",   "Value", "" )
    ok = VRSet( "EF_FtpAddress",      "Value", "" )
    ok = VRSet( "EF_LocalDirectory",  "Value", "" )
    ok = VRSet( "EF_RemoteDirectory", "Value", "" )
    ok = VRSet( "EF_UserID",          "Value", "" )
    ok = VRSet( "EF_Account",         "Value", "" )
    ok = VRSet( "EF_CloseCommand",    "Value", "" )

return

/*:VRX         ClearNewSiteItems
*/
ClearNewSiteItems:
if debug_mode = 1 then say "ClearNewSiteItems"

    new_site_name    = ""
    new_address      = ""
    new_account      = ""
    new_userid       = ""
    new_password     = ""
    new_mode         = "FTP"
    new_local_dir    = ""
    new_remote_dir   = ""
    new_exit_command = ""

    ok = VRSet( "EF_NewSiteName",     "Value", "" )
    ok = VRSet( "EF_NewAddress",      "Value", "" )
    ok = VRSet( "EF_NewAccount",      "Value", "" )
    ok = VRSet( "EF_NewUserID",       "Value", "" )
    ok = VRSet( "EF_NewPassword",     "Value", "" )
    ok = VRSet( "EF_NewLocalDir",     "Value", "" )
    ok = VRSet( "EF_NewRemoteDir",    "Value", "" )
    ok = VRSet( "EF_NewCloseCommand", "Value", "" )

    ok = VRSet( "RB_NewMode_FTP", "Set", 1 )

    CopyMode = "FTP"
    call SetModeSet

return

/*:VRX         CM_AUF_ChangeDirectory_Click
*/
CM_AUF_ChangeDirectory_Click:
if debug_mode = 1 then say "CM_AUF_ChangeDirectory_Click"

    call LB_AUF_Directory_DoubleClick

return

/*:VRX         CM_AUF_RemoveSelectedFile_Click
*/
CM_AUF_RemoveSelectedFile_Click:
if debug_mode = 1 then say "CM_AUF_RemoveSelectedFile_Click"

    call LB_AUF_AlwaysUploadFileList_DoubleClick

return

/*:VRX         CM_AUF_SetSelectedFile_Click
*/
CM_AUF_SetSelectedFile_Click:
if debug_mode = 1 then say "CM_AUF_SetSelectedFile_Click"

    call LB_AUF_FileName_DoubleClick

return

/*:VRX         CM_ClearAllLogFiles_Yes_Click
*/
CM_ClearAllLogFiles_Yes_Click: 
if debug_mode = 1 then say "CM_ClearAllLogFiles_Yes_Click"

    button.0 = 2
    button.1 = "Yes"
    button.2 = "No"

    id = VRMessage( VRWindow(), "Do you really delete all log files?", "Caution", "w", "button.")

    if id = 1 then do /* OK */
        ok = VRDeleteFile( JasmineDirectory"\"LogDirectory"\*.log" )
        ok = VRMethod( "LB_LV_LogFileName", "Clear" )
        ok = VRMethod( "LB_LV_LogTitle",    "Clear" )
        ok = VRMethod( "MLE_LV_LogDetail",  "Clear" )
    end
    else do /* Cancel */
        nop
    end

return

/*:VRX         CM_CreateTakeoutData_Yes_Click
*/
CM_CreateTakeoutData_Yes_Click: 
if debug_mode = 1 then say "CM_CreateTakeoutData_Yes_Click"

    JasmineMode = "Takeout"

    call SetTakeoutButton "Disabled"

    ok = VRMethod( "LB_UploadedFileList", "Clear" )
    ok = VRMethod( "LB_TakeoutStatus", "Clear" )

    call SetStatus "* * * Jasmine Takeout ver."JasmineVersion" * * *"

    call CreateTakeoutData

    ok = VRMethod( "LB_UploadedFileList", "AddStringList", tko_host.selected.,  )

    call SetStatus "* * * End of Takeout (Create TakeOut Data) * * *"
    call SetStatus " "

    call SetTakeoutButton "Enabled"

    JasmineMode = "Upload"

return

/*:VRX         CM_CUF_CancelAll_Click
*/
CM_CUF_CancelAll_Click: 
if debug_mode = 1 then say "CM_CUF_CancelAll_Click"

    upload = "Disabled"

    ok = VRDestroy( SW_SelectCompulsoryUploadFile )

return

/*:VRX         CM_CUF_CancelSelect_Click
*/
CM_CUF_CancelSelect_Click: 
if debug_mode = 1 then say "CM_CUF_CancelSelect_Click"

    ok = VRDestroy( SW_SelectCompulsoryUploadFile )

return

/*:VRX         CM_ExitJasmine_Click
*/
CM_ExitJasmine_Click: 
if debug_mode = 1 then say "CM_ExitJasmine_Click"

    call WriteInitialFile

    call quit

return

/*:VRX         CM_MinimizeJasmine_Click
*/
CM_MinimizeJasmine_Click: 
if debug_mode = 1 then say "CM_MinimizeJasmine_Click"

    rc = VRSet( MW_Jasmine, "Visible", 0 )

return

/*:VRX         CM_MUF_ChangeDirectory_Click
*/
CM_MUF_ChangeDirectory_Click:
if debug_mode = 1 then say "CM_MUF_ChangeDirectory_Click"

    call LB_MUF_Directory_DoubleClick

return

/*:VRX         CM_MUF_RemoveSelectedFile_Click
*/
CM_MUF_RemoveSelectedFile_Click:
if debug_mode = 1 then say "CM_MUF_RemoveSelectedFile_Click"

    call LB_MUF_UploadExcludedFileList_DoubleClick

return

/*:VRX         CM_MUF_SetSelectedDirectory_Click
*/
CM_MUF_SetSelectedDirectory_Click:
if debug_mode = 1 then say "CM_MUF_SetSelectedDirectory_Click"

    call PB_MUF_ExcludeSelectedDirectory_Click

return

/*:VRX         CM_MUF_SetSelectedFIle_Click
*/
CM_MUF_SetSelectedFIle_Click:
if debug_mode = 1 then say "CM_MUF_SetSelectedFIle_Click"

    call LB_MUF_FileName_DoubleClick

return

/*:VRX         CM_NS_ClearClipboard_Click
*/
CM_NS_ClearClipboard_Click:
if debug_mode = 1 then say "CM_NS_ClearClipboard_Click"

    ok = VRMethod( "Application", "PutClipboard", "" )

return

/*:VRX         CM_NS_Copy_Click
*/
CM_NS_Copy_Click:
if debug_mode = 1 then say "CM_NS_Copy_Click"

    ok = VRMethod( "Application", "PutClipboard", selectedtext )
    selectedtext = ""

return

/*:VRX         CM_NS_Paste_Click
*/
CM_NS_Paste_Click:
if debug_mode = 1 then say "CM_NS_Paste_Click"

    text = VRMethod( "Application", "GetClipboard" )

    if CMNS_Target = "Site Name" then do
        ok = VRSet( "EF_NewSiteName", "Value", text )
    end
    else if CMNS_Target = "Address" then do
        ok = VRSet( "EF_NewAddress", "Value", text )
    end
    else if CMNS_Target = "User ID" then do
        ok = VRSet( "EF_NewUserID", "Value", text )
    end
    else if CMNS_Target = "Password" then do
        ok = VRSet( "EF_NewPassword", "Value", text )
    end
    else if CMNS_Target = "Account" then do
        ok = VRSet( "EF_NewAccount", "Value", text )
    end
    else if CMNS_Target = "Local Dir" then do
        ok = VRSet( "EF_NewLocalDir", "Value", text )
    end
    else if CMNS_Target = "Remote Dir" then do
        ok = VRSet( "EF_NewRemoteDir", "Value", text )
    end
    else if CMNS_Target = "Close Cmd" then do
        ok = VRSet( "EF_NewCloseCommand", "Value", text )
    end

return

/*:VRX         CM_TR_ConfirmDelete_Yes_Click
*/
CM_TR_ConfirmDelete_Yes_Click: 
if debug_mode = 1 then say "CM_TR_ConfirmDelete_Yes_Click"

    TRi  = VRGet( "LB_TimerRun_List", "Selected" )

    ok = VRMethod( "LB_TimerRun_List", "Delete", TRi )

    ok = VRSet( "PB_TimerRun_Change", "Enabled", 0 )
    ok = VRSet( "PB_TimerRun_Delete", "Enabled", 0 )

return

/*:VRX         CM_TR_Delete_Click
*/
CM_TR_Delete_Click: 
if debug_mode = 1 then say "CM_TR_Delete_Click"

    call PB_TimerRun_Delete_Click

return

/*:VRX         CM_UFL_CancelAll_Click
*/
CM_UFL_CancelAll_Click: 
if debug_mode = 1 then say "CM_UFL_CancelAll_Click"

    upload = "Disabled"
    ok = VRDestroy(SW_CheckFile)

return

/*:VRX         CM_UFL_CancelSelect_Click
*/
CM_UFL_CancelSelect_Click: 
if debug_mode = 1 then say "CM_UFL_CancelSelect_Click"

    ok = VRDestroy(SW_CheckFile)

return

/*:VRX         CreateTakeoutData
*/
CreateTakeoutData:
if debug_mode = 1 then say "CreateTakeoutData"

    call SetStatus "[Create TakeOut File]"

    rc = SysFileTree(JasmineDirectory"\"LogDirectory"\*.log", "tko_log_file.", "of")

    if tko_log_file.0 = 1      then call SetStatus ">Checking log file"
    else if tko_log_file.0 > 1 then call SetStatus ">Checking log files"

    /* Set Ribbon Color */
    if JasmineMode = "Takeout" then do
        call SetTakeoutSliderColor
    end
    else if JasmineMode = "Upload" then do
        call SetUploadSliderColor
    end

    host_num = 0
    host_total = 0
    tko_host.0 = 0
    tko_host_name.0 = 0

    /* Site Name変更後、Takeout Dataを再構成したときに旧名のSite Nameで生じる問題を修正 (03.Jan.1998 2.70 edit 1) */
    host_id = "NONE"
    do i = 1 to tko_log_file.0

        call SetStatus right(i, length(tko_log_file.0), 0)":"tko_log_file.i

        do until lines(tko_log_file.i) = 0
            line_text=linein(tko_log_file.i)

            parse var line_text . ":" status ":" file_name  .

            select
                when left(line_text, length(">Host name :")) = ">Host name :" then do
                    /* 登録名に"("がある時に正しく処理できない問題を修正 29.Jul.98 2.49 beta 4 */
                    lpos = lastpos("(", line_text)
                    dummy = left(line_text, lpos - 1)
                    parse var  dummy ">Host name : " host

                    do h = 1 to FtpSiteName.0
                        if host = FtpSiteName.h then do
                            host_id = h
                            leave
                        end
                        else do
                            /* Site Name変更後、Takeout Dataを再構成したときに旧名のSite Nameで生じる問題を修正 (03.Jan.1998 2.70 edit 1) */
                            host_id = "NONE"
                        end
                    end

                    stp = tko_host.host_id.0
                end

                when status = "Completed" then do
                    new_file = "Yes"

                    /* Site Name変更後、Takeout Dataを再構成したときに旧名のSite Nameで生じる問題を修正 (03.Jan.1998 2.70 edit 1) */
                    if host_id <> "NONE" then do
                        do f = 1 to stp
                            if file_name = tko_host.host_id.f then do
                                new_file = "No"
                                leave
                            end
                        end

                        if new_file = "Yes" then do
                            stp = stp + 1
                            tko_host.host_id.stp = file_name
                            tko_host.host_id.0 = stp
                        end
                    end
                end

                otherwise
                    nop
            end
        end
        call lineout tko_log_file.i

        /* Set Takeout Slider */
        percent = (i * 100) % tko_log_file.0
        if JasmineMode = "Takeout" then do
            ok = VRSet( "SL_TakeoutStatus", "Percentile", percent )
        end
        else if JasmineMode = "Upload" then do
            ok = VRSet( "SL_UploadStatus", "Percentile", percent )
        end
    end

    /* CREATE Takeout FILE */
    call WriteTakeoutDataFile

    call ReadTakeoutData

return

/*:VRX         DDCB_FtpSiteList_Change
*/
DDCB_FtpSiteList_Change:
if debug_mode = 1 then say "DDCB_FtpSiteList_Change"

    if FtpSiteName.0 > 0 then do
        selected = VRGet( "DDCB_FtpSiteList", "Selected" )

        ok = VRSet( "EF_FtpAddress",      "Value", FtpSiteAddress.selected )
        ok = VRSet( "EF_UserID",          "Value", UserID.selected )
        ok = VRSet( "EF_Mode",            "Value", Mode.selected )
        ok = VRSet( "EF_Account",         "Value", Account.selected )
        ok = VRSet( "EF_CloseCommand",    "Value", CloseCommand.selected )
        ok = VRSet( "EF_LocalDirectory",  "Value", LocalDirectory.selected )
        ok = VRSet( "EF_RemoteDirectory", "Value", RemoteDirectory.selected )

        ok = VRSet( "SPIN_LastYear",      "Index", substr(LastDate.selected, 5, 4) - 1967 )
        ok = VRSet( "SPIN_LastMonth",     "Index", substr(LastDate.selected, 1, 2) )
        ok = VRSet( "SPIN_LastDay",       "Index", substr(LastDate.selected, 3, 2) )

        ok = VRSet( "SPIN_LastHour",      "Index", substr(LastTime.selected, 1, 2) + 1 )
        ok = VRSet( "SPIN_LastMin",       "Index", substr(LastTime.selected, 4, 2) + 1 )

        ok = VRMethod( "PB_Run", "SetFocus" )

        if Mode.selected = "FTP" then do
            ok = VRSet( "DT_Address",  "Enabled", 1 )
            ok = VRSet( "DT_UserID",   "Enabled", 1 )
            ok = VRSet( "DT_Account",  "Enabled", 1 )

            if LanguageMode = "Default" then do
                ok = VRSet( "DT_LocalDir",  "Caption", "Local Dir" )
                ok = VRSet( "DT_RemoteDir", "Caption", "Remote Dir" )
            end
            else do
                ok = VRSet( "DT_LocalDir",  "Caption", Text_LocalDir_FTP )
                ok = VRSet( "DT_RemoteDir", "Caption", Text_RemoteDir_FTP )
            end

            ok = VRSet( "EF_RemoteDirectory", "Width", 2180 )
            ok = VRSet( "PB_OpenRemoteFolder", "Visible", 0 )
        end
        else if Mode.selected = "COPY" then do
            ok = VRSet( "DT_Address",  "Enabled", 0 )
            ok = VRSet( "DT_UserID",   "Enabled", 0 )
            ok = VRSet( "DT_Account",  "Enabled", 0 )

            if LanguageMode = "Default" then do
                ok = VRSet( "DT_LocalDir",  "Caption", "Source" )
                ok = VRSet( "DT_RemoteDir", "Caption", "Destination" )
            end
            else do
                ok = VRSet( "DT_LocalDir",  "Caption", Text_LocalDir_COPY )
                ok = VRSet( "DT_RemoteDir", "Caption", Text_RemoteDir_COPY )
            end

            ok = VRSet( "EF_RemoteDirectory", "Width", 1518 )
            ok = VRSet( "PB_OpenRemoteFolder", "Visible", 1 )
        end

        rc = SetDateTimeGB(Mode.selected)
    end

return

/*:VRX         DDCB_FtpSiteList_Click
*/
DDCB_FtpSiteList_Click: 
if debug_mode = 1 then say "DDCB_FtpSiteList_Click"

    ok = VRSet( "DDCB_FtpSiteList", "Height", 253 * (1 + FtpSiteName.0) ) 

return

/*:VRX         EF_LogDirectory_Change
*/
EF_LogDirectory_Change:
if debug_mode = 1 then say "EF_LogDirectory_Change"

    LogDirectory = VRGet( "EF_LogDirectory", "Value" )

    call WriteInitialFile

return

/*:VRX         EF_NewAccount_Change
*/
EF_NewAccount_Change:
if debug_mode = 1 then say "EF_NewAccount_Change"

    new_account = VRGet( "EF_NewAccount", "Value" )

return

/*:VRX         EF_NewAccount_ContextMenu
*/
EF_NewAccount_ContextMenu:
if debug_mode = 1 then say "EF_NewAccount_ContextMenu"

/*
    call SetCMNSCaption

    CMNS_Target = "Account"

    ok = VRMethod( "ContextMenu_NewSiteCutAndPaste", "Popup")
*/
return

/*:VRX         EF_NewAddress_Change
*/
EF_NewAddress_Change:
if debug_mode = 1 then say "EF_NewAddress_Change"

    new_address = VRGet( "EF_NewAddress", "Value" )

return

/*:VRX         EF_NewAddress_ContextMenu
*/
EF_NewAddress_ContextMenu:
if debug_mode = 1 then say "EF_NewAddress_ContextMenu"

/*
    call SetCMNSCaption

    CMNS_Target = "Address"

    ok = VRMethod( "ContextMenu_NewSiteCutAndPaste", "Popup")
*/
return

/*:VRX         EF_NewCloseCommand_Change
*/
EF_NewCloseCommand_Change:
if debug_mode = 1 then say "EF_NewExitCommand_Change"

    new_exit_account = VRGet( "EF_NewCloseCommand", "Value" )

return

/*:VRX         EF_NewCloseCommand_ContextMenu
*/
EF_NewCloseCommand_ContextMenu:
if debug_mode = 1 then say "EF_NewCloseCommand_ContextMenu"

/*
    call SetCMNSCaption

    CMNS_Target = "Close Cmd"

    ok = VRMethod( "ContextMenu_NewSiteCutAndPaste", "Popup")
*/
return

/*:VRX         EF_NewLocalDir_Change
*/
EF_NewLocalDir_Change:
if debug_mode = 1 then say "EF_NewLocalDir_Change"

    new_local_dir = VRGet( "EF_NewLocalDir", "Value" )

return

/*:VRX         EF_NewLocalDir_ContextMenu
*/
EF_NewLocalDir_ContextMenu:
if debug_mode = 1 then say "EF_NewLocalDir_ContextMenu"

/*
    call SetCMNSCaption

    CMNS_Target = "Local Dir"

    ok = VRMethod( "ContextMenu_NewSiteCutAndPaste", "Popup")
*/
return

/*:VRX         EF_NewPassword_Change
*/
EF_NewPassword_Change:
if debug_mode = 1 then say "EF_NewPassword_Change"

    new_password = VRGet( "EF_NewPassword", "Value" )

return

/*:VRX         EF_NewPassword_ContextMenu
*/
EF_NewPassword_ContextMenu:
if debug_mode = 1 then say "EF_NewPassword_ContextMenu"

/*
    call SetCMNSCaption

    CMNS_Target = "Password"

    ok = VRMethod( "ContextMenu_NewSiteCutAndPaste", "Popup")
*/
return

/*:VRX         EF_NewRemoteDir_Change
*/
EF_NewRemoteDir_Change:
if debug_mode = 1 then say "EF_NewRemoteDir_Change"

    new_remote_dir = VRGet( "EF_NewRemoteDir", "Value" )

return

/*:VRX         EF_NewRemoteDir_ContextMenu
*/
EF_NewRemoteDir_ContextMenu:
if debug_mode = 1 then say "EF_NewRemoteDir_ContextMenu"

/*
    call SetCMNSCaption

    CMNS_Target = "Remote Dir"

    ok = VRMethod( "ContextMenu_NewSiteCutAndPaste", "Popup")
*/
return

/*:VRX         EF_NewSiteName_Change
*/
EF_NewSiteName_Change:
if debug_mode = 1 then say "EF_NewSiteName_Change"

    new_site_name = VRGet( "EF_NewSiteName", "Value" )

return

/*:VRX         EF_NewSiteName_ContextMenu
*/
EF_NewSiteName_ContextMenu:
if debug_mode = 1 then say "EF_NewSiteName_ContextMenu"

/*
    call SetCMNSCaption

    CMNS_Target = "Site Name"

    ok = VRMethod( "ContextMenu_NewSiteCutAndPaste", "Popup")
*/
return

/*:VRX         EF_NewUserID_Change
*/
EF_NewUserID_Change:
if debug_mode = 1 then say "EF_NewUserID_Change"

    new_userid = VRGet( "EF_NewUserID", "Value" )

return

/*:VRX         EF_NewUserID_ContextMenu
*/
EF_NewUserID_ContextMenu:
if debug_mode = 1 then say "EF_NewUserID_ContextMenu"

/*
    call SetCMNSCaption

    CMNS_Target = "User ID"

    ok = VRMethod( "ContextMenu_NewSiteCutAndPaste", "Popup")
*/
return

/*:VRX         EF_RegistoryNumber_Change
*/
EF_RegistoryNumber_Change:
if debug_mode = 1 then say "EF_RegistoryNumber_Change"

    ok = VRSet( "PB_Registory", "Enabled", 1 )

return

/*:VRX         EF_Sound_Directory_Change
*/
EF_Sound_Directory_Change:
if debug_mode = 1 then say "EF_Sound_Directory_Change"

    temp_sound_dir = VRGet( "EF_Sound_Directory", "Value" )

    rc = SysFileTree( temp_sound_dir"\*.wav", "tempsound.", "of" )

    if tempsound.0 = 0 then do
        ok = VRSet( "EF_Sound_Directory", "BackColor", "Red" )
        ok = VRSet( "PB_Sound_OK", "Enabled", 0 )
    end
    else do
        ok = VRSet( "EF_Sound_Directory", "BackColor", "<default>" )
        ok = VRSet( "PB_Sound_OK", "Enabled", 1 )
    end

return

/*:VRX         Fini
*/
Fini:
    window = VRWindow()
    call VRSet window, "Visible", 0
    drop window
return 0

/*:VRX         Halt
*/
Halt:
    signal _VREHalt
return

/*:VRX         HtmlKeywordExchange
*/
HtmlKeywordExchange:
if debug_mode = 1 then say "HtmlKeywordExchange"

    parse arg src "###" trg

    rc = SysFileDelete(trg)

    /* Bug Fix - 05.Oct.2002 */ 
    lp = lastpos("\", src)
    HKE_ftp_local_directory = left(src, lp - 1)
    /* --- */


/* ファイル・サイズ、日時、時間の表示調整 */
/*
 * 注意 : ファイル・サイズは元のファイル(src)のサイズが表示される。trgの方ではないので注意。
 *
 */

    rc = SysFileTree(src, "fn.", "F")
    parse var fn.1 JSM_UPDATE_DATE JSM_UPDATE_TIME JSM_FILE_SIZE . . .

    /* FILE SIZE */
    if      HkeFileSizeStyle = "Bit"   then do
        JSM_FILE_SIZE = (JSM_FILE_SIZE * 8)
        JSM_FILE_SIZE = JSM_FILE_SIZE"bit"
    end
    else if HkeFileSizeStyle = "Byte"  then do
        JSM_FILE_SIZE = JSM_FILE_SIZE
        JSM_FILE_SIZE = JSM_FILE_SIZE"Byte"
    end
    else if HkeFileSizeStyle = "KByte" then do
        JSM_FILE_SIZE = format((JSM_FILE_SIZE / 1024),,1)
        JSM_FILE_SIZE = JSM_FILE_SIZE"KB"
    end

    /* UPDATE DATE */
    parse var JSM_UPDATE_DATE hke_mm "/" hke_dd "/" hke_yy
    if hke_yy < 68 then hke_yy = 2000 + hke_yy
    else                hke_yy = 1900 + hke_yy

    hke_mm = right(hke_mm, 2, "0")
    hke_dd = right(hke_dd, 2, "0")

    if HkeDateMonthIndication = "Alphabet" then do
        hke_mm = ChangeHkeDateMonthIndication(hke_mm)
    end

    if      HkeDateStyle = "yyyymmdd" then JSM_UPDATE_DATE = hke_yy"/"hke_mm"/"hke_dd
    else if HkeDateStyle = "mmddyyyy" then JSM_UPDATE_DATE = hke_mm"/"hke_dd"/"hke_yy
    else if HkeDateStyle = "ddmmyyyy" then JSM_UPDATE_DATE = hke_dd"/"hke_mm"/"hke_yy

    if HkeDateSeparator = "Dot" then do
        JSM_UPDATE_DATE = translate(JSM_UPDATE_DATE, ".", "/")
    end

    /* add new key (Version 3.29 beta 1, 08.Jul.2001) */
    JSM_UPDATE_YEAR = hke_yy

    /* UPDATE TIME */
    parse var JSM_UPDATE_TIME hke_hh ":" hke_mm
    hke_mm = left(hke_mm, 2)
    if (right(JSM_UPDATE_TIME, 1) = "p") & (hke_hh < 12) then do
        hke_hh = hke_hh + 12
    end
    JSM_UPDATE_TIME = right(hke_hh, 2, "0")":"hke_mm

    /* UPLOAD DATE */
    JSM_UPLOAD_DATE = date(u)

    parse var JSM_UPLOAD_DATE hke_mm "/" hke_dd "/" hke_yy
    if hke_yy < 68 then hke_yy = 2000 + hke_yy
    else                hke_yy = 1900 + hke_yy

    hke_mm = right(hke_mm, 2, "0")
    hke_dd = right(hke_dd, 2, "0")

    if HkeDateMonthIndication = "Alphabet" then do
        hke_mm = ChangeHkeDateMonthIndication(hke_mm)
    end

    if      HkeDateStyle = "yyyymmdd" then JSM_UPLOAD_DATE = hke_yy"/"hke_mm"/"hke_dd
    else if HkeDateStyle = "mmddyyyy" then JSM_UPLOAD_DATE = hke_mm"/"hke_dd"/"hke_yy
    else if HkeDateStyle = "ddmmyyyy" then JSM_UPLOAD_DATE = hke_dd"/"hke_mm"/"hke_yy

    if HkeDateSeparator = "Dot" then do
        JSM_UPLOAD_DATE = translate(JSM_UPLOAD_DATE, ".", "/")
    end

    /* add new key (Version 3.29 beta 1, 08.Jul.2001) */
    JSM_UPLOAD_YEAR = hke_yy

    /* UPLOAD TIME */
    JSM_UPLOAD_TIME = time("n")
    parse var JSM_UPLOAD_TIME hke_hh ":" hke_mm ":" .
    JSM_UPLOAD_TIME = right(hke_hh, 2, "0")":"hke_mm



/* * * * * * * * * * * * */

    hke_cnt = 1
    do until lines(src) = 0
        line_text=linein(src)

        /* Exchange "%<--" to "%", "-->%" to "%" if available. */
        /* Added at 13.Sep.2002 */
        do forever
            parse var line_text t1 "%<!--" t2
            if t2 = "" then do
                if right(line_text, 5) = "%<!--" then do
                    line_text = t1"%"
                end
                leave
            end
            else do
                line_text = t1"%"t2
            end
        end

        do forever
            parse var line_text t1 "-->%" t2
            if t2 = "" then do
                if right(line_text, 4) = "-->%" then do
                    line_text = t1"%"
                end
                leave
            end
            else do
                line_text = t1"%"t2
            end
        end

        /* %JSM_UPDATE_DATE% */
        do forever
            if pos("%JSM_UPDATE_DATE%", line_text) > 0 then do
                parse var line_text t1 "%JSM_UPDATE_DATE%" t2

                if right(t1, 1) = "%" then do
                    line_text = strip(left(t1, length(t1) - 1)"%JSM_UPDATE_DATE%"t2)
                    leave
                end
                else do
                    line_text = strip(t1""JSM_UPDATE_DATE""t2)
                end
            end
            else do
                leave
            end
        end

        /* %JSM_UPDATE_TIME% */
        do forever
            if pos("%JSM_UPDATE_TIME%", line_text) > 0 then do
                parse var line_text t1 "%JSM_UPDATE_TIME%" t2

                if right(t1, 1) = "%" then do
                    line_text = strip(left(t1, length(t1) - 1)"%JSM_UPDATE_TIME%"t2)
                    leave
                end
                else do
                    line_text = strip(t1""JSM_UPDATE_TIME""t2)
                end
            end
            else do
                leave
            end
        end

        /* %JSM_UPLOAD_DATE% */
        do forever
            if pos("%JSM_UPLOAD_DATE%", line_text) > 0 then do
                parse var line_text t1 "%JSM_UPLOAD_DATE%" t2

                if right(t1, 1) = "%" then do
                    line_text = strip(left(t1, length(t1) - 1)"%JSM_UPLOAD_DATE%"t2)
                    leave
                end
                else do
                    line_text = strip(t1""JSM_UPLOAD_DATE""t2)
                end
            end
            else do
                leave
            end
        end

        /* %JSM_UPLOAD_TIME% */
        do forever
            if pos("%JSM_UPLOAD_TIME%", line_text) > 0 then do
                parse var line_text t1 "%JSM_UPLOAD_TIME%" t2

                if right(t1, 1) = "%" then do
                    line_text = strip(left(t1, length(t1) - 1)"%JSM_UPLOAD_TIME%"t2)
                    leave
                end
                else do
                    line_text = strip(t1""JSM_UPLOAD_TIME""t2)
                end
            end
            else do
                leave
            end
        end

        /* %JSM_FILE_SIZE% */
        do forever
            if pos("%JSM_FILE_SIZE%", line_text) > 0 then do
                parse var line_text t1 "%JSM_FILE_SIZE%" t2

                if right(t1, 1) = "%" then do
                    line_text = strip(left(t1, length(t1) - 1)"%JSM_FILE_SIZE%"t2)
                    leave
                end
                else do
                    line_text = strip(t1""JSM_FILE_SIZE""t2)
                end
            end
            else do
                leave
            end
        end

        /* Add new key `YEAR' (Version 3.29 beta 1, 08.Jul.2001) */
        /* %JSM_UPDATE_YEAR% */
        do forever
            if pos("%JSM_UPDATE_YEAR%", line_text) > 0 then do
                parse var line_text t1 "%JSM_UPDATE_YEAR%" t2

                if right(t1, 1) = "%" then do
                    line_text = strip(left(t1, length(t1) - 1)"%JSM_UPDATE_YEAR%"t2)
                    leave
                end
                else do
                    line_text = strip(t1""JSM_UPDATE_YEAR""t2)
                end
            end
            else do
                leave
            end
        end

        /* %JSM_UPLOAD_YEAR% */
        do forever
            if pos("%JSM_UPLOAD_YEAR%", line_text) > 0 then do
                parse var line_text t1 "%JSM_UPLOAD_YEAR%" t2

                if right(t1, 1) = "%" then do
                    line_text = strip(left(t1, length(t1) - 1)"%JSM_UPLOAD_YEAR%"t2)
                    leave
                end
                else do
                    line_text = strip(t1""JSM_UPLOAD_YEAR""t2)
                end
            end
            else do
                leave
            end
        end


/* Enhanced HTML Keyword Exchange */
        EHKE_WARNING = "<font color="red">* * * JASMINE WARNING : NO DATA, CHECK FILE NAME * * *</font>"

        /* %JSM_UPDATE_DATE=file_name% */
        do forever
            if pos("%JSM_UPDATE_DATE=", line_text) > 0 then do
                parse var line_text t1 "%JSM_UPDATE_DATE=" t2

                if right(t1, 1) = "%" then do
                    line_text = strip(left(t1, length(t1) - 1)"%JSM_UPDATE_DATE="t2)
                    leave
                end
                else do
                    parse var t2 tgt_file "%" t3

                    if pos(":", tgt_file) <> 2 then do
                        tgt_file = HKE_ftp_local_directory"\"strip(tgt_file)
                    end

                    rc = SysFileTree(tgt_file, "enhfn.", "F")

                    if enhfn.0 = 1 then do
                    /*  parse var enhfn.1 JSM_EXT_FILE_UPDATE_DATE JSM_EXT_FILE_UPDATE_TIME JSM_EXT_FILE_FILE_SIZE . . . */
                        parse var enhfn.1 JSM_EXT_FILE_UPDATE_DATE . . . . .

                        /* Format Change */
                        parse var JSM_EXT_FILE_UPDATE_DATE hke_mm "/" hke_dd "/" hke_yy
                        if hke_yy < 68 then hke_yy = 2000 + hke_yy
                        else                hke_yy = 1900 + hke_yy

                        hke_mm = right(hke_mm, 2, "0")
                        hke_dd = right(hke_dd, 2, "0")

                        if HkeDateMonthIndication = "Alphabet" then do
                            hke_mm = ChangeHkeDateMonthIndication(hke_mm)
                        end

                        if      HkeDateStyle = "yyyymmdd" then JSM_EXT_FILE_UPDATE_DATE = hke_yy"/"hke_mm"/"hke_dd
                        else if HkeDateStyle = "mmddyyyy" then JSM_EXT_FILE_UPDATE_DATE = hke_mm"/"hke_dd"/"hke_yy
                        else if HkeDateStyle = "ddmmyyyy" then JSM_EXT_FILE_UPDATE_DATE = hke_dd"/"hke_mm"/"hke_yy

                        if HkeDateSeparator = "Dot" then do
                            JSM_EXT_FILE_UPDATE_DATE = translate(JSM_EXT_FILE_UPDATE_DATE, ".", "/")
                        end
                    end
                    else do
                        JSM_EXT_FILE_UPDATE_DATE = EHKE_WARNING
                    end

                    /* Set */
                    line_text = strip(t1""JSM_EXT_FILE_UPDATE_DATE""t3)
                end
            end
            else do
                leave
            end
        end

        /* %JSM_UPDATE_TIME=file_name% */
        do forever
            if pos("%JSM_UPDATE_TIME=", line_text) > 0 then do
                parse var line_text t1 "%JSM_UPDATE_TIME=" t2

                if right(t1, 1) = "%" then do
                    line_text = strip(left(t1, length(t1) - 1)"%JSM_UPDATE_DATE="t2)
                    leave
                end
                else do
                    parse var t2 tgt_file "%" t3

                    if pos(":", tgt_file) <> 2 then do
                        tgt_file = HKE_ftp_local_directory"\"strip(tgt_file)
                    end

                    rc = SysFileTree(tgt_file, "enhfn.", "F")

                    if enhfn.0 = 1 then do
                    /*  parse var enhfn.1 JSM_EXT_FILE_UPDATE_DATE JSM_EXT_FILE_UPDATE_TIME JSM_EXT_FILE_FILE_SIZE . . . */
                        parse var enhfn.1 . JSM_EXT_FILE_UPDATE_TIME . . . .

                        /* Format Change */
                        parse var JSM_EXT_FILE_UPDATE_TIME hke_hh ":" hke_mm
                        hke_mm = left(hke_mm, 2)

                        if (right(JSM_EXT_FILE_UPDATE_TIME, 1) = "p") & (hke_hh < 12) then do
                            hke_hh = hke_hh + 12
                        end

                        JSM_EXT_FILE_UPDATE_TIME = right(hke_hh, 2, "0")":"hke_mm
                    end
                    else do
                        JSM_EXT_FILE_UPDATE_TIME = EHKE_WARNING
                    end

                    /* Set */
                    line_text = strip(t1""JSM_EXT_FILE_UPDATE_TIME""t3)
                end
            end
            else do
                leave
            end
        end

        /* %JSM_FILE_SIZE=file_name% */
        do forever
            if pos("%JSM_FILE_SIZE=", line_text) > 0 then do
                parse var line_text t1 "%JSM_FILE_SIZE=" t2

                if right(t1, 1) = "%" then do
                    line_text = strip(left(t1, length(t1) - 1)"%JSM_FILE_SIZE="t2)
                    leave
                end
                else do
                    parse var t2 tgt_file "%" t3

                    if pos(":", tgt_file) <> 2 then do
                        tgt_file = HKE_ftp_local_directory"\"strip(tgt_file)
                    end

                    rc = SysFileTree(tgt_file, "enhfn.", "F")

                    if enhfn.0 = 1 then do
                    /*  parse var enhfn.1 JSM_EXT_FILE_UPDATE_DATE JSM_EXT_FILE_UPDATE_TIME JSM_EXT_FILE_SIZE . . . */
                        parse var enhfn.1 . . JSM_EXT_FILE_SIZE . . .

                        /* Format Change */
                        if      HkeFileSizeStyle = "Bit"   then do
                            JSM_EXT_FILE_SIZE = (JSM_EXT_FILE_SIZE * 8)
                            JSM_EXT_FILE_SIZE = JSM_EXT_FILE_SIZE" bit"
                        end
                        else if HkeFileSizeStyle = "Byte"  then do
                            JSM_EXT_FILE_SIZE = JSM_EXT_FILE_SIZE
                            JSM_EXT_FILE_SIZE = JSM_EXT_FILE_SIZE" Byte"
                        end
                        else if HkeFileSizeStyle = "KByte" then do
                            JSM_EXT_FILE_SIZE = format((JSM_EXT_FILE_SIZE / 1024),,1)
                            JSM_EXT_FILE_SIZE = JSM_EXT_FILE_SIZE" KB"
                        end
                    end
                    else do
                        JSM_EXT_FILE_SIZE = EHKE_WARNING
                    end

                    /* Set */
                    line_text = strip(t1""JSM_EXT_FILE_SIZE""t3)
                end
            end
            else do
                leave
            end
        end
/* End of Enhanced HTML Keyword Exchange */


/* Enhanced HTML Keyword Exchange for Multiple Files (13.Oct.2001) */
        /* %JSM_LATEST=fn1,fn2,...,fnn:TYPE%   TYPE : DATE, TIME, BOTH, DATETIME (BOTH=DATETIME) */
        do forever
            if pos("%JSM_LATEST=", line_text) > 0 then do
                parse var line_text t1 "%JSM_LATEST=" t2

                if right(t1, 1) = "%" then do
                    line_text = strip(left(t1, length(t1) - 1)"%JSM_LATEST="t2)
                    leave
                end
                else do
                    lf_num     = 0
                    lf_trg_cnt = 0 /* latest files counter - target files */
                    lf_cnt     = 0 /* latest files counter - exist files*/

                    parse var t2 temp "%" t3
                    parse var temp hke_latest_file_names ":" HKE_LATEST_TYPE
                    /*
                    parse var t2 hke_latest_file_names ":" HKE_LATEST_TYPE "%" t3
                    */

                    /* FILEの抽出 */
                    do forever
                        lf_trg_cnt = lf_trg_cnt + 1
                        parse var hke_latest_file_names hke_latest_file_name_temp "," hke_latest_file_names

                        rc = SysFileTree(HKE_ftp_local_directory"\"strip(hke_latest_file_name_temp), "enhfn_l.", "F")

                        if enhfn_l.0 = 1 then do
                            lf_cnt = lf_cnt + 1

                            hke_latest_file_name.lf_cnt = hke_latest_file_name_temp
                            parse var enhfn_l.1 hkelf_date hkelf_time . . . . 

                            parse var hkelf_date hke_mm "/" hke_dd "/" hke_yy
                            if hke_yy < 68 then hke_yy = 2000 + hke_yy
                            else                hke_yy = 1900 + hke_yy
                            
                            LF_DATE.lf_cnt = hke_yy""right(hke_mm, 2, "0")""right(hke_dd, 2, "0")

                            parse var hkelf_time hke_hh ":" hke_mm
                            hke_mm = left(hke_mm, 2)
                            if (right(hkelf_time, 1) = "p") & (hke_hh < 12) then do
                                hke_hh = hke_hh + 12
                            end
                            LF_TIME.lf_cnt = right(hke_hh, 2, "0")""hke_mm

                            lf_num = lf_cnt                        
                            hke_latest_file_name.0 = lf_num
                            LF_DATE.0 = lf_num
                            LF_TIME.0 = lf_num
                        end

                        if hke_latest_file_names = "" then leave
                    end

                    /* LATESTの日付、時間を調べる */
                    JSM_HKE_LATEST_DATE = "00000000"
                    JSM_HKE_LATEST_TIME = "0000"

                    if lf_num > 0 then do
                        do lf_cnt = 1 to lf_num
                            if LF_DATE.lf_cnt > JSM_HKE_LATEST_DATE then do
                                JSM_HKE_LATEST_DATE = LF_DATE.lf_cnt
                                JSM_HKE_LATEST_TIME = LF_TIME.lf_cnt
                            end
                            else do
                                if LF_TIME.lf_cnt > JSM_HKE_LATEST_TIME then do
                                    JSM_HKE_LATEST_TIME = LF_TIME.lf_cnt
                                end
                            end
                        end
                    
                        hke_yy = left(JSM_HKE_LATEST_DATE, 4)
                        hke_mm = right(left(JSM_HKE_LATEST_DATE, 6), 2)
                        hke_dd = right(JSM_HKE_LATEST_DATE, 2)

                        if HkeDateMonthIndication = "Alphabet" then do
                            hke_mm = ChangeHkeDateMonthIndication(hke_mm)
                        end

                        if      HkeDateStyle = "yyyymmdd" then JSM_HKE_LATEST_DATE = hke_yy"/"hke_mm"/"hke_dd
                        else if HkeDateStyle = "mmddyyyy" then JSM_HKE_LATEST_DATE = hke_mm"/"hke_dd"/"hke_yy
                        else if HkeDateStyle = "ddmmyyyy" then JSM_HKE_LATEST_DATE = hke_dd"/"hke_mm"/"hke_yy

                        if HkeDateSeparator = "Dot" then do
                            JSM_HKE_LATEST_DATE = translate(JSM_HKE_LATEST_DATE, ".", "/")
                        end

                        hke_hh = left(JSM_HKE_LATEST_TIME, 2)
                        hke_mm = right(JSM_HKE_LATEST_TIME, 2)
                        JSM_HKE_LATEST_TIME = hke_hh":"hke_mm

                        /* Set */
                        if HKE_LATEST_TYPE = "DATE" then do
                            line_text = strip(t1""JSM_HKE_LATEST_DATE""t3)
                        end
                        else if HKE_LATEST_TYPE = "TIME" then do
                            line_text = strip(t1""JSM_HKE_LATEST_TIME""t3)
                        end
                        else if (HKE_LATEST_TYPE = "DATETIME") | (HKE_LATEST_TYPE = "BOTH") | (HKE_LATEST_TYPE = "ALL") | (HKE_LATEST_TYPE = "") then do
                            line_text = strip(t1""JSM_HKE_LATEST_DATE" "JSM_HKE_LATEST_TIME""t3)
                        end
                    end
                    else do
                        line_text = EHKE_WARNING 
                    end

                    leave
                end
            end
            else do
                leave
            end
        end

/* End of Enhanced Multiple HTML Keyword Exchange */


        if hke_cnt = 1 then do
            call lineout trg, line_text, 1
        end
        else do
            call lineout trg, line_text
        end

        hke_cnt = hke_cnt + 1
    end

    call lineout trg
    call lineout src

return 1 /* Return codeはDummy - 18.Jan.2004 */

/*:VRX         Init
*/
Init:
if debug_mode = 1 then say "Init"

    /* Run Optionのargumentにdebugmodeを指定した場合の処置 */
    if translate(initArgs.1) =  "DEBUGMODE" then do
        ok = VrLoadSecondary( "SW_SelectRunMode", "w")
    end
    else do
        debug_mode = 0
    end

    JasmineVersion = "4.01 beta 5"

    call VRSet "console", "WindowListTitle", ""

    if debug_mode = 0 then do
        call VRRedirectStdio "off"
    end

    rc = rxfuncadd( "sysloadfuncs", "rexxutil", "sysloadfuncs")
    rc = sysloadfuncs()

    /* REXX FTP */
    rc = rxfuncadd("ftploadfuncs", "rxftp", "ftploadfuncs")
    rc = FtpLoadFuncs()

    JasmineDirectory = VRCurrDrive()""VRCurrDir()

    jmd = initArgs.1
    if (translate(left(jmd, 3)) = "/I:") | (translate(left(jmd, 3)) = "-I:") then do
        JasmineDirectory = right(jmd, length(jmd) - 3)
        if right(JasmineDirectory, 1) = "\" then JasmineDirectory = left(JasmineDirectory, length(JasmineDirectory) - 1)
    end

    ok = VRSet( "MW_Jasmine", "Caption", "Jasmine "JasmineVersion)
    ok = VRSet( "MW_Jasmine", "WindowListTitle", "Jasmine "JasmineVersion)

    ok = VRSet( "IRB_CancelUpload", "PicturePath", "#142" )

    do i = 1 to 31
        day.i = right(i, 2, "0")
    end
    day.0 = i
    ok = VRMethod( "SPIN_LastDay", "SetStringList", "day." )

    do i = 1 to 12
        month.i = right(i, 2, "0")
    end
    month.0 = i
    ok = VRMethod( "SPIN_LastMonth", "SetStringList", "month." )

    do i = 1 to 100
        year.i = 1967 + i
    end
    year.0 = i
    ok = VRMethod( "SPIN_LastYear", "SetStringList", "year." )

    do i = 1 to 24
        t = i - 1
        hour.i = right(t, 2, "0")
    end
    hour.0 = i
    ok = VRMethod( "SPIN_LastHour", "SetStringList", "hour." )

    do i = 1 to 60
        t = i - 1
        min.i = right(t, 2, "0")
    end
    min.0 = i
    ok = VRMethod( "SPIN_LastMin", "SetStringList", "min." )

    jrm.1 = "Selected Site Only"
    jrm.2 = "All Sites"
    jrm.3 = "All FTP Sites"
    jrm.4 = "All Copy Sites"
    jrm.0 = 4
    ok = VRMethod( "SPIN_JasmineRunMode", "SetStringList", "jrm." )

    call SetDefault
    call ReadInitialFile
    call ReadFtpSiteInitialFile

    /* Set Font at first startup time */
    if (Font = "<NONE>") & (StatusFont = "<NONE>") then do
        Font_old = "9.WarpSans"
        Font = VRFontDialog( VRWindow(), "9.WarpSans", "Jasmine - Set font, anyway" )
        StatusFont = Font
        if Font = "" then do
            Font       = Font_old
            StatusFont = Font_old
        end
    end

    call SetFont

    /* Set Status Color Set */
    red_hex   = left(color_success_hex, 2)
    green_hex = right(left(color_success_hex, 4), 2)
    blue_hex  = right(color_success_hex, 2)
    color_success = "("x2d(red_hex)","x2d(green_hex)","x2d(blue_hex)")"

    red_hex   = left(color_attention_hex, 2)
    green_hex = right(left(color_attention_hex, 4), 2)
    blue_hex  = right(color_attention_hex, 2)
    color_attention = "("x2d(red_hex)","x2d(green_hex)","x2d(blue_hex)")"

    red_hex   = left(color_failed_hex, 2)
    green_hex = right(left(color_failed_hex, 4), 2)
    blue_hex  = right(color_failed_hex, 2)
    color_failed = "("x2d(red_hex)","x2d(green_hex)","x2d(blue_hex)")"

    call SearchMMOS2
    if mmos2 = "Enabled" then do
        rc = RXFUNCDROP("mciRxInit") /* rc = 1 : previously not installed */
        rc = RXFUNCADD("mciRxInit","MCIAPI","mciRxInit")
        rc = mciRxInit()

        ok = VRSet( "IPB_SoundSwitch", "Enabled", 1 )
    end


Registry = "Registered"
/* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
    /* * * * * Registry * * * * */
    RegisterNumber.0 = 5
    RegisterNumber.1 = "JSM1968M01" /* Previous User */
    RegisterNumber.2 = "JSM1968N02" /* New User */
    RegisterNumber.3 = "JSM1968F03" /* Friends */
    RegisterNumber.4 = "JSM1968IBM" /* IBMer */
    RegisterNumber.5 = "JSM1968S05" /* Special Version */
/*  RegisterNumber.6 = "DEMO2000" *//* Demo with Time Bomb */

    do i = 1 to RegisterNumber.0
        if register_number = RegisterNumber.i then Registry = "Registered"
    end
/*
    /* DEMO用に20秒Registry Windowを表示しない替わりにTime Bomb機能でプロテクト */
    if left(register_number, 7) = "JSMDEMO" then do
        CurDate = date("s")
        TimeBombDate = "20000101"  /* 1999年12月31日まで使用可 */

        if CurDate < TimeBombDate then do
            nop
        end
        else do
            Registry = "TIME IS UP"
        end
    end
*/
    if Registry <> "Registered" then do
        registry_sleep = 20
        registry_mode = "Startup"
        ok = VRLoadSecondary( "SW_Registry", "W" )
        registry_mode = "Normal"
    end

    if register_number = RegisterNumber.6 then do
        ok = VRSet( "MW_Jasmine", "Caption", "Jasmine "JasmineVersion" (DEMO)")
        ok = VRSet( "MW_Jasmine", "WindowListTitle", "Jasmine DEMO "JasmineVersion" (DEMO)")
        ok = VRSet( "MW_Jasmine", "WindowIcon", "$122" )
    end
    /* * * * * * * * * * * * * * */
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */



    ok = VRMethod( "DDCB_FtpSiteList", "AddStringList", "FtpSiteName.",  )
    ok = VRSet( "DDCB_FtpSiteList", "Selected", 1 )

    ok = VRMethod( "PB_Run", "SetFocus" )

    call ListLogFile

    /* Set Takeout / RetryFailedFile / DefaultDisableUpload */
    /* ここで読み込んでおかないとTakeout機能Enabledの時のデータ保存に時間がかかるかもしれない */
    /* まだ発展途上なのでなんとも言えないのであるが... */
    do i = 1 to FtpSiteName.0
        tko_host_name.i = FtpSiteName.i
        tko_host.i.0 = 0

        failed_file.i.0 = FtpSiteName.i

        default_disabled.i.0 = FtpSiteName.i
    end
    tko_host_name.0 = FtpSiteName.0

    /* Takeout File, Retry Failed File, Default Disabled Upload File */
    call SetDataFileFullPathName
    call ReadTakeoutData
    call ReadFailedFileData
    call ReadDefaultDisabledFileData
    call ReadAlwaysUploadFileData
    /* End of Takeout File, Retry Failed File, Default Disabled Upload File */


    /* Read Timer Run Data */
    call ReadTimerRunData


    /* Read Language File */
    select
        when LanguageMode = "Default" then do
            JasmineLanguage = "Default"
        end
        otherwise
            if JasmineLanguage <> "Default" then do
                call ReadLanguageFile JasmineLanguage
            end
    end

    ok = VRSet( "DDCB_FtpSiteList", "Selected", 1 )

    ok = VRSet( "DT_UploadStatus", "BackColor", "<default>" )


    /* Set Language */
    window_key_name = "L_MainWindow"
    call SetLanguage window_key_name

    window = VRWindow()
    call VRMethod window, "CenterWindow"

    ok = VRSet( "MW_Jasmine", "Left", PosX )
    ok = VRSet( "MW_Jasmine", "Top", PosY )

    if PreferencePosX = 0 then PreferencePosX = PosX
    if PreferencePosY = 0 then PreferencePosY = PosY

    if (CopyShadowToStartupFolder = "Yes") & (StartMinimized = "Yes") then do
        call VRSet window, "Visible", 0
        ok = VRMethod( window, "Minimize" ) 
    end
    else do
        call VRSet window, "Visible", 1
    end

    call VRMethod window, "Activate"
    drop window

return

/*:VRX         IPB_SoundSwitch_Click
*/
IPB_SoundSwitch_Click:
if debug_mode = 1 then say "IPB_SoundSwitch_Click"

    if Sound = "ON" then do
        Sound = "OFF"
        ok = VRSet( "IPB_SoundSwitch", "PicturePath", "#136" )
        ok = VRSet( "PB_SetSound", "Enabled", 0 )
    end
    else if Sound = "OFF" then do
        Sound = "ON"
        ok = VRSet( "IPB_SoundSwitch", "PicturePath", "#134" )
        ok = VRSet( "PB_SetSound", "Enabled", 1 )
    end

    call WriteInitialFile

    ok = VRMethod( "LB_Status", "SetFocus" )

return

/*:VRX         IPB_TimerRun_Click
*/
IPB_TimerRun_Click: 
if debug_mode = 1 then say "IPB_TimerRun_Click"

    if TimerRun = "Disabled" then do
        TimerRun = "Enabled" 

        ok = VRSet( "TM_TimerRun_Timer", "Visible", 1 )

        ok = VRSet( "PB_TimerRun_Setup", "Enabled", 1 )
        ok = VRSet( "TM_TimerRun_Timer", "Enabled", 1 )

        ok = VRSet( "IPB_TimerRun", "PicturePath", "#150" )
    
        TimerCount = 0
        ok = VRSet( "TM_TimerRun_Timer", "Caption", "00:00:00" )


        TimerRunStatus.1 = "[Timer Run Status]"
        TimerRunStatus.0 = 1
        TimerRunCounter = 1
    end
    else if TimerRun = "Enabled" then do        
        TimerRun = "Disabled" 

        ok = VRSet( "TM_TimerRun_Timer", "Visible", 0 )

        ok = VRSet( "PB_TimerRun_Setup", "Enabled", 0 )
        ok = VRSet( "TM_TimerRun_Timer", "Enabled", 0 )

        ok = VRSet( "IPB_TimerRun", "PicturePath", "#152" )
    end

    ok = VRMethod( "LB_Status", "SetFocus" )

return

/*:VRX         IRB_CancelTakeout_Click
*/
IRB_CancelTakeout_Click:
if debug_mode = 1 then say "IRB_CancelTakeout_Click"

    cancel_takeout = "Yes"

return

/*:VRX         IRB_CancelUpload_Click
*/
IRB_CancelUpload_Click:
if debug_mode = 1 then say "IRB_CancelUpload_Click"

    cancel = "Yes"

return

/*:VRX         LB_AUF_AlwaysUploadFileList_ContextMenu
*/
LB_AUF_AlwaysUploadFileList_ContextMenu:
if debug_mode = 1 then say "LB_AUF_AlwaysUploadFileList_ContextMenu"

    selected = VRGet( "LB_AUF_AlwaysUploadFileList", "Selected" )

    if selected > 0 then do
        ok = VRMethod( "ContextMenu_AUF_RemoveSelectedFile", "Popup")
    end

return

/*:VRX         LB_AUF_AlwaysUploadFileList_DoubleClick
*/
LB_AUF_AlwaysUploadFileList_DoubleClick:
if debug_mode = 1 then say "LB_AUF_AlwaysUploadFileList_DoubleClick"

    selected = VRGet( "LB_AUF_AlwaysUploadFileList", "Selected" )
    ok = VRMethod( "LB_AUF_AlwaysUploadFileList", "Delete", selected )

return

/*:VRX         LB_AUF_Directory_ContextMenu
*/
LB_AUF_Directory_ContextMenu:
if debug_mode = 1 then say "LB_AUF_Directory_ContextMenu"

    selected = VRGet( "LB_AUF_Directory", "Selected" )

    if selected > 0 then do
        ok = VRMethod( "ContextMenu_AUF_ChangeDirectory", "Popup")
    end

return

/*:VRX         LB_AUF_Directory_DoubleClick
*/
LB_AUF_Directory_DoubleClick:
if debug_mode = 1 then say "LB_AUF_Directory_DoubleClick"

    auf_previous_dir = VRGet( "EF_AUF_LocalDir", "Value" )

    selectedstring = VRGet( "LB_AUF_Directory", "SelectedString" )
    if selectedstring = ".." then do
        lpos = lastpos("\", auf_previous_dir)
        auf_current_dir = left(auf_previous_dir, lpos - 1 )
    end
    else do
        auf_current_dir = auf_previous_dir"\"VRGet( "LB_AUF_Directory", "SelectedString" )
    end

    ok = VRSet( "EF_AUF_LocalDir", "Value", auf_current_dir )

    rc = SysFileTree( auf_current_dir"\*", "auf_dirs.", "d" )
    do i = 1 to auf_dirs.0
        parse var auf_dirs.i . . . . auf_dirs.i
        auf_dirs.i = strip(auf_dirs.i)
        auf_dirs.i = right(auf_dirs.i, length(auf_dirs.i) - length(auf_current_dir) - 1)
    end

    if auf_current_dir <> ftp_local_directory then do
        i = auf_dirs.0 + 1
        auf_dirs.i = ".."
        auf_dirs.0 = auf_dirs.0 + 1
    end

    ok = VRMethod( "LB_AUF_Directory", "Clear" )
    ok = VRMethod( "LB_AUF_Directory", "AddStringList", "auf_dirs.",  )

    /* Load Files */
    rc = SysFileTree( auf_current_dir"\*", "auf_files.", "f" )
    do i = 1 to auf_files.0
        parse var auf_files.i . . . . auf_files.i
        auf_files.i = strip(auf_files.i)
        auf_files.i = right(auf_files.i, length(auf_files.i) - length(auf_current_dir) - 1)
    end

    ok = VRMethod( "LB_AUF_FileName", "Clear" )
    ok = VRMethod( "LB_AUF_FileName", "AddStringList", "auf_files.",  )


return

/*:VRX         LB_AUF_FileName_ContextMenu
*/
LB_AUF_FileName_ContextMenu:
if debug_mode = 1 then say "LB_AUF_FileName_ContextMenu"

    selected = VRGet( "LB_AUF_FileName", "Selected" )

    if selected > 0 then do

        ok = VRMethod( "ContextMenu_AUF_SetSelectedFile", "Popup")
    end

return

/*:VRX         LB_AUF_FileName_DoubleClick
*/
LB_AUF_FileName_DoubleClick:
if debug_mode = 1 then say "LB_AUF_FileName_DoubleClick"

    selectedstring = VRGet( "LB_AUF_FileName", "SelectedString" )
    auf_selected_file = right(auf_current_dir"\"selectedstring, length(auf_current_dir"\"selectedstring) - length(ftp_local_directory) - 1)

    ok = VRMethod( "LB_AUF_AlwaysUploadFileList", "GetStringList", "AUF_current_list." )

    same_file = "Not Available"
    do i = 1 to AUF_current_list.0
        if auf_selected_file = AUF_current_list.i then do
            same_file = "Available"
            leave
        end
    end

    if same_file = "Not Available" then do
        position = VRMethod( "LB_AUF_AlwaysUploadFileList", "AddString", auf_selected_file,  )
    end
    else do
        call VRMessage VRWindow(), "'"auf_selected_file"' is already selected.", "Jasmine - Always Upload Files"
    end

return

/*:VRX         LB_CompulsoryUploadFile_Click
*/
LB_CompulsoryUploadFile_Click:

    ok = VRMethod( "LB_CompulsoryUploadFile", "GetSelectedStringList", "stem." )
    if stem.0 > 0 then do
        ok = VRSet( "PB_Set_CompulsoryUploadFile", "Enabled", 1 )
    end
    else do
        ok = VRSet( "PB_Set_CompulsoryUploadFile", "Enabled", 0 )
    end

return

/*:VRX         LB_FileList_Click
*/
LB_FileList_Click:
/* if debug_mode = 1 then say "LB_FileList_Click" */

    ok = VRMethod( "LB_FileList", "GetSelectedList", "list." )

    if list.0 > 0 then do
        ok = VRSet( "PB_ChangeUploadStatus", "Enabled", 1 )
        if LanguageMode = "Default" then do
            if list.0 = 1 then do
                ok = VRSet( "PB_ChangeUploadStatus", "Caption", "Change Status of Selected File" )
            end
            else do
                if check_num_old < 2 then do
                    ok = VRSet( "PB_ChangeUploadStatus", "Caption", "Change Status of Selected Files" )
                end
            end
        end
    end
    else if list.0 = 0 then do
        ok = VRSet( "PB_ChangeUploadStatus", "Enabled", 0 )
    end

    check_num_old = list.0

return

/*:VRX         LB_FileList_DoubleClick
*/
LB_FileList_DoubleClick:
if debug_mode = 1 then say "LB_FileList_DoubleClick"

    cuf_selected = VRGet( "LB_FileList", "Selected" )

    if cuf_selected > 0 then do
        if      upload_status.cuf_selected = "Enabled"  then upload_status.cuf_selected = "Disabled"
        else if upload_status.cuf_selected = "Disabled" then upload_status.cuf_selected = "Enabled"

        files.cuf_selected = left(upload_status.cuf_selected, 8, " ")" : "target_file_name.cuf_selected

        ok = VRMethod( "LB_FileList", "SetItemData", cuf_selected, files.cuf_selected )
        ok = VRMethod( "LB_FileList", "Clear" )
        ok = VRMethod( "LB_FileList", "AddStringList", "files.",  )
    end

    ok = VRSet( "LB_FileList", "Selected", cuf_selected )

return

/*:VRX         LB_LV_LogFileName_Click
*/
LB_LV_LogFileName_Click:
if debug_mode = 1 then say "LB_LV_LogFileName_Click"

    ok = VRMethod( "LB_LV_LogTitle", "Clear" )
    position = VRMethod( "LB_LV_LogTitle", "AddString", "loading...",  )

    selectedstring = VRGet( "LB_LV_LogFileName", "SelectedString" )

    logfilename = JasmineDirectory"\"LogDirectory"\"selectedstring

    LF.0       = 0
    LF.0.0     = 0
    LF_Title.0 = 0
    LF_Date.0  = 0

    rc = SysFileTree( logfilename, "selected_log_file.", "f" )

    parse var selected_log_file.1 slf_date slf_time slf_size slf_attrib .

    ok = VRSet( "EF_LogFileDetail_Date", "Value", right(slf_date, 8, "0") )
    ok = VRSet( "EF_LogFileDetail_Time", "Value", right(slf_time, 6, "0") )
    ok = VRSet( "EF_LogFileDetail_Size", "Value", slf_size"byte" )
    ok = VRSet( "EF_LogFileDetail_Attr", "Value", slf_attrib )

    i = 0
    j = 0
    do until lines(logfilename) = 0
        line_text=linein(logfilename)

        if (left(line_text, 1) <> "*") & (line_text <> "#Jasmine Sequential Run Mode") & (left(line_text, length(">RUN MODE:")) <> ">RUN MODE:") then do
            if (left(line_text, length(">Host name")) = ">Host name") | (left(line_text, length(">Destination name")) = ">Destination name") then do
                if i > 0 then LF.i.0 = j
                i = i + 1
                j = 1

                LF.i.j = line_text
                parse var line_text . " : " LF_Title.i
                lpos = lastpos( "(", LF_Title.i )
                LF_Title.i = strip(left(LF_Title.i, lpos - 1))
                LF_Date.i = ""
            end
            else do
                if (translate(left(line_text, length(">Uploaded date and time"))) = ">UPLOADED DATE AND TIME") | (translate(left(line_text, length(">Copied date and time"))) = ">COPIED DATE AND TIME") then do
                    LF_Date.i = right(line_text, 16)
                end

                j = j + 1
                LF.i.j = line_text
                LF.i.0 = j
            end
        end
        else do
            nop
        end

        LF.0       = i
        LF_Title.0 = i
    end
    call lineout logfilename

    do i = 1 to LF_Title.0
        if LF_Date.i = "" then LF_Title.i = LF_Title.i" : (NO ACTIVITY)"
        else                   LF_Title.i = LF_Title.i" : "LF_Date.i
    end

    ok = VRMethod( "LB_LV_LogTitle", "Clear" )
    ok = VRMethod( "LB_LV_LogTitle", "AddStringList", "LF_Title." )

return

/*:VRX         LB_LV_LogTitle_Click
*/
LB_LV_LogTitle_Click:
if debug_mode = 1 then say "LB_LV_LogTitle_Click"

/*
    ok = VRMethod( "LB_LV_LogDetail", "Clear" )

    selected = VRGet( "LB_LV_LogTitle", "Selected" )
    ok = VRMethod( "LB_LV_LogDetail", "AddStringList", LF.selected.,  )
*/

    selected = VRGet( "LB_LV_LogTitle", "Selected" )

    ok = VRMethod( "MLE_LV_LogDetail", "Clear" )
    CRLF = '0d0a'x

    dummy = ""
    dummy = LF.selected.1
    do i = 2 to LF.selected.0
        dummy = dummy""CRLF""LF.selected.i
    end
    ok = VRSet( "MLE_LV_LogDetail", "Value", dummy )

return

/*:VRX         LB_MUF_Directory_Click
*/
LB_MUF_Directory_Click:
if debug_mode = 1 then say "LB_MUF_Directory_Click"

    selectedstring = VRGet( "LB_MUF_Directory", "SelectedString" )

    if selectedstring <> ".." then do
        ok = VRSet( "PB_MUF_ExcludeSelectedDirectory", "Enabled", 1 )
    end

return

/*:VRX         LB_MUF_Directory_ContextMenu
*/
LB_MUF_Directory_ContextMenu:
if debug_mode = 1 then say "LB_MUF_Directory_ContextMenu"

    selected = VRGet( "LB_MUF_Directory", "Selected" )
    selectedstring = VRGet( "LB_MUF_Directory", "SelectedString" )

    if selected > 0 then do
        if selectedstring <> ".." then do
            ok = VRSet( "CM_MUF_SetSelectedDirectory", "Enabled", 1 )
        end
        else do
            ok = VRSet( "CM_MUF_SetSelectedDirectory", "Enabled", 0 )
        end

        ok = VRMethod( "ContextMenu_MUF_SetSelectedDirectory", "Popup")
    end

return

/*:VRX         LB_MUF_Directory_DoubleClick
*/
LB_MUF_Directory_DoubleClick:
if debug_mode = 1 then say "LB_MUF_Directory_DoubleClick"

    muf_previous_dir = VRGet( "EF_MUF_LocalDir", "Value" )

    selectedstring = VRGet( "LB_MUF_Directory", "SelectedString" )

    if selectedstring = ".." then do
        lpos = lastpos("\", muf_previous_dir)
        muf_current_dir = left(muf_previous_dir, lpos - 1 )
    end
    else do
        muf_current_dir = muf_previous_dir"\"VRGet( "LB_MUF_Directory", "SelectedString" )
    end

    ok = VRSet( "EF_MUF_LocalDir", "Value", muf_current_dir )

    rc = SysFileTree( muf_current_dir"\*", "muf_dirs.", "d" )

    do i = 1 to muf_dirs.0
        parse var muf_dirs.i . . . . muf_dirs.i
        muf_dirs.i = strip(muf_dirs.i)
        muf_dirs.i = right(muf_dirs.i, length(muf_dirs.i) - length(muf_current_dir) - 1)
    end

    if muf_current_dir <> ftp_local_directory then do
        i = muf_dirs.0 + 1
        muf_dirs.i = ".."
        muf_dirs.0 = muf_dirs.0 + 1
    end

    ok = VRMethod( "LB_MUF_Directory", "Clear" )
    ok = VRMethod( "LB_MUF_Directory", "AddStringList", "muf_dirs.",  )

    /* Load Files */
    rc = SysFileTree( muf_current_dir"\*", "muf_files.", "f" )
    do i = 1 to muf_files.0
        parse var muf_files.i . . . . muf_files.i
        muf_files.i = strip(muf_files.i)
        muf_files.i = right(muf_files.i, length(muf_files.i) - length(muf_current_dir) - 1)
    end

    ok = VRMethod( "LB_MUF_FileName", "Clear" )
    ok = VRMethod( "LB_MUF_FileName", "AddStringList", "muf_files.",  )

    ok = VRSet( "PB_MUF_ExcludeSelectedDirectory", "Enabled", 0 )

return

/*:VRX         LB_MUF_FileName_ContextMenu
*/
LB_MUF_FileName_ContextMenu:
if debug_mode = 1 then say "LB_MUF_FileName_ContextMenu"

    selected = VRGet( "LB_MUF_FileName", "Selected" )

    if selected > 0 then do
        ok = VRMethod( "ContextMenu_MUF_SetSelectedFile", "Popup")
    end

return

/*:VRX         LB_MUF_FileName_DoubleClick
*/
LB_MUF_FileName_DoubleClick:
if debug_mode = 1 then say "LB_MUF_FileName_DoubleClick"

    selectedstring = VRGet( "LB_MUF_FileName", "SelectedString" )
    muf_selected_file = right(muf_current_dir"\"selectedstring, length(muf_current_dir"\"selectedstring) - length(ftp_local_directory) - 1)


    ok = VRMethod( "LB_MUF_UploadExcludedFileList", "GetStringList", "MUF_current_list." )

    same_file = "Not Available"
    do i = 1 to MUF_current_list.0
        if muf_selected_file = MUF_current_list.i then do
            same_file = "Available"
            leave
        end
    end

    if same_file = "Not Available" then do
        position = VRMethod( "LB_MUF_UploadExcludedFileList", "AddString", muf_selected_file,  )
    end
    else do
        call VRMessage VRWindow(), "'"muf_selected_file"' is already selected.", "Jasmine - Set Exclude Upload Files"
    end

return

/*:VRX         LB_MUF_UploadExcludedFileList_ContextMenu
*/
LB_MUF_UploadExcludedFileList_ContextMenu:
if debug_mode = 1 then say "LB_MUF_UploadExcludedFileList_ContextMenu"

    selected = VRGet( "LB_MUF_UploadExcludedFileList", "Selected" )

    if selected > 0 then do
        ok = VRMethod( "ContextMenu_MUF_RemoveSelectedFile", "Popup")
    end

return

/*:VRX         LB_MUF_UploadExcludedFileList_DoubleClick
*/
LB_MUF_UploadExcludedFileList_DoubleClick:
if debug_mode = 1 then say "LB_MUF_UploadExcludedFileList_DoubleClick"

    selected = VRGet( "LB_MUF_UploadExcludedFileList", "Selected" )
    ok = VRMethod( "LB_MUF_UploadExcludedFileList", "Delete", selected )

return

/*:VRX         LB_Status_ContextMenu
*/
LB_Status_ContextMenu:

    selectedstring = VRGet( "LB_Status", "SelectedString" )

    if selectedstring <> "" then do
        ok = VRSet( "CM_StatusDetail", "Caption", selectedstring )
        ok = VRMethod( "ContextMenu_StatusDetail", "Popup")
    end

return

/*:VRX         LB_TakeoutStatus_ContextMenu
*/
LB_TakeoutStatus_ContextMenu:

    selectedstring = VRGet( "LB_TakeoutStatus", "SelectedString" )

    if selectedstring <> "" then do
        ok = VRSet( "CM_StatusDetail", "Caption", selectedstring )
        ok = VRMethod( "ContextMenu_StatusDetail", "Popup")
    end

return

/*:VRX         LB_TimerRun_List_Click
*/
LB_TimerRun_List_Click: 

    ok = VRSet( "PB_TimerRun_Set",    "Enabled", 1 )
    ok = VRSet( "PB_TimerRun_Change", "Enabled", 1 )
    ok = VRSet( "PB_TimerRun_Delete", "Enabled", 1 )

    selected = VRGet( "LB_TimerRun_List", "Selected" )

    ok = VRSet( "DDCB_TimerRun_SiteList", "Value", TimerRunMode.TRSITENAME.selected )

    if TimerRunMode.TRMODE.selected = "Run Regularly" then do
        ok = VRSet( "RB_RunRegularly", "Set", 1 )
        TR_Mode = "Run Regularly"

        parse var TimerRunMode.TRPARAM.selected . val_1 val_2

        ok = VRSet( "SPIN_TimerRun_RunRegularly_Interval",     "Value", val_1 )
        ok = VRSet( "SPIN_TimerRun_RunRegularly_IntervalUnit", "Value", val_2 )

        ok = VRSet( "DT_RunRegurary_TextEvery",                "Enabled", 1 )
        ok = VRSet( "SPIN_TimerRun_RunRegularly_Interval",     "Enabled", 1 )
        ok = VRSet( "SPIN_TimerRun_RunRegularly_IntervalUnit", "Enabled", 1 )

        ok = VRSet( "SPIN_TimerRun_FixedTime_HH",              "Enabled", 0 )
        ok = VRSet( "DT_RunRegurary_TextColon",                "Enabled", 0 )
        ok = VRSet( "SPIN_TimerRun_RunFixedTime_MM",           "Enabled", 0 )
    end
    else if TimerRunMode.TRMODE.selected = "Run Fixed Time" then do
        ok = VRSet( "RB_RunFixedTime", "Set", 1 )
        TR_Mode = "Run Fixed Time"

        parse var TimerRunMode.TRPARAM.selected val_1 ":" val_2

        ok = VRSet( "SPIN_TimerRun_FixedTime_HH",    "Value", val_1 )
        ok = VRSet( "SPIN_TimerRun_RunFixedTime_MM", "Value", val_2 )

        ok = VRSet( "DT_RunRegurary_TextEvery",                "Enabled", 0 )
        ok = VRSet( "SPIN_TimerRun_RunRegularly_Interval",     "Enabled", 0 )
        ok = VRSet( "SPIN_TimerRun_RunRegularly_IntervalUnit", "Enabled", 0 )

        ok = VRSet( "SPIN_TimerRun_FixedTime_HH",              "Enabled", 1 )
        ok = VRSet( "DT_RunRegurary_TextColon",                "Enabled", 1 )
        ok = VRSet( "SPIN_TimerRun_RunFixedTime_MM",           "Enabled", 1 )
    end


return

/*:VRX         LB_TimerRun_List_ContextMenu
*/
LB_TimerRun_List_ContextMenu: 

    selected = VRGet( "LB_TimerRun_List", "Selected" )

    if selected > 0 then do
        ok = VRMethod( "ContextMenu_TimerRun_Setup", "Popup")
    end

return

/*:VRX         LB_UploadedFileList_Click
*/
LB_UploadedFileList_Click: 

    ok = VRMethod( "LB_UploadedFileList", "GetSelectedList", "takeout_selected_items." )

    if takeout_selected_items.0 > 0 then do
        ok = VRSet( "PB_RunTakeout", "Enabled", 1 )

        if ftp_transfer_mode = "FTP" then do
            ok = VRSet( "PB_ClearSelectedData", "Enabled", 1 )
        end
        else do
            ok = VRSet( "PB_ClearSelectedData", "Enabled", 0 )
        end
    end

return

/*:VRX         LB_UploadedFileList_ContextMenu
*/
LB_UploadedFileList_ContextMenu:

    selectedstring = VRGet( "LB_UploadedFileList", "SelectedString" )

    if selectedstring <> "" then do
        ok = VRSet( "CM_StatusDetail", "Caption", selectedstring )
        ok = VRMethod( "ContextMenu_StatusDetail", "Popup")
    end

return

/*:VRX         ListLogFile
*/
ListLogFile:
if debug_mode = 1 then say "ListLogFile"

    rc = SysFileTree( JasmineDirectory"\"LogDirectory"\*.log", "logfile.", "of" )

    do i = 1 to logfile.0
        log_len = length(logfile.i) - length(JasmineDirectory) - length(LogDirectory) - 2
        logfile.i = right(logfile.i, log_len )
    end

return

/*:VRX         LocalCopy
*/
LocalCopy:
if debug_mode = 1 then say "LocalCopy"
/* Same as Upload subroutine */

    parse arg hn

    dir_num_old = 0

    upload_cancel = "No"

    success_file.0    = 0
    total_file_size   = 0
    total_upload_time = 0
    upload_file_num   = 0
    success_num       = 0
    cancel_file_num   = 0
    failed_file_num   = 0
    do i = 1 to target_file_name.0
        set = VRGet( "IRB_CancelUpload", "Set" )
        if set = 1 then upload_cancel = "Yes"
        if upload_cancel = "Yes" then do
            ok = VRSet( "LB_Status",       "BackColor", color_attention )
            ok = VRSet( "DT_UploadStatus", "BackColor", color_attention )
            ok = VRSet( "DT_UploadStatus", "Caption", "CANCEL" )

            call SetStatus "##### CANCELED BY USER #####"

            /* Retrun Date and Time as last Date and Time */
            now_year  = last_year
            now_month = last_month
            now_day   = last_day
            now_hour  = last_hour
            now_min   = last_min

            ok = VRSet( "SPIN_LastYear",  "Index", now_year - 1967 )
            ok = VRSet( "SPIN_LastMonth", "Index", now_month )
            ok = VRSet( "SPIN_LastDay",   "Index", now_day )
            ok = VRSet( "SPIN_LastHour",  "Index", now_hour + 1 )
            ok = VRSet( "SPIN_LastMin",   "Index", now_min + 1 )

            LastDate.hn = now_month""now_day""now_year
            LastTime.hn = now_hour":"now_min

            leave
        end

        percent = (i * 100) % target_file_name.0
        ok = VRSet( "SL_UploadStatus", "Percentile", percent )

        if upload_status.i = "Enabled" then do
            call LocalCopyOneFile hn
        end
        else if upload_status.i = "Disabled" then do
            cancel_file_num = cancel_file_num + 1
            ok = VRSet( "LB_Status",       "BackColor", color_attention )
            ok = VRSet( "DT_UploadStatus", "BackColor", color_attention )
            ok = VRSet( "DT_UploadStatus", "Caption", "CANCEL" )

            status = right(i,length(target_file_name.0),"0")"/"right(target_file_name.0, length(target_file_name.0), "0")
            call SetStatus status":Canceled :"target_file_name.i
        end
    end

    /* Show ignore file number if available */
    if ShowIgnoredFileList = "Enabled" then do
        if ignore_file_name.0 > 0 then do
            call SetStatus "[Ignore Upload]"

            do i = 1 to ignore_file_name.0
                ok = VRSet( "LB_Status",       "BackColor", color_attention )
                ok = VRSet( "DT_UploadStatus", "BackColor", color_attention )
                ok = VRSet( "DT_UploadStatus", "Caption",   "IGNORE" )

                status = right(i,length(ignore_file_name.0),"0")"/"right(ignore_file_name.0, length(ignore_file_name.0), "0")
                call SetStatus status":Ignored  :"ignore_file_name.i
            end
        end
    end

    if upload_cancel = "No" then do
        ok = VRSet( "LB_Status",       "BackColor", "White" )
        ok = VRSet( "DT_UploadStatus", "BackColor", "White" )
        ok = VRSet( "DT_UploadStatus", "Caption",   "" )
    end

return

/*:VRX         LocalCopyOneFile
*/
LocalCopyOneFile:
if debug_mode = 1 then say "LocalCopyOneFile"

    parse arg hn

    upload_file_num = upload_file_num + 1

    dir_length = lastpos("\", target_file_name.i)
    make_directory = "No"
    if dir_length > 0 then do
        dir_name = left(target_file_name.i, dir_length - 1)

        call MakeDestinationDirectory ftp_remote_directory"\"dir_name
    end

    status = right(i,length(target_file_name.0),"0")"/"right(target_file_name.0, length(target_file_name.0), "0")
    call SetStatus status":COPY     *"target_file_name.i
    ok = VRSet( "DT_UploadStatus", "Caption", "COPY" ) /* 2.81 beta 10, 05.Jul.1999 */

    upload_start_time = time(e)
    rc = VRCopyFile(ftp_local_directory"\"target_file_name.i, ftp_remote_directory"\"target_file_name.i)
    error_message = VRError()

    upload_comp_time = time(e)
    upload_time = upload_comp_time - upload_start_time

    ok = VRMethod( "LB_Status", "Delete", count )

    status = right(i,length(target_file_name.0),"0")"/"right(target_file_name.0, length(target_file_name.0), "0")
    if rc = 1 then do /* rc=1 is success*/
        ok = VRSet( "LB_Status",       "BackColor", color_success )
        ok = VRSet( "DT_UploadStatus", "BackColor", color_success )
        ok = VRSet( "DT_UploadStatus", "Caption", "COMP" )

        status_file_size = target_file_size.i"byte"
        total_file_size = total_file_size + target_file_size.i
        status_transfer_mode = transfer" mode"

        total_upload_time = total_upload_time + upload_time

        if StatusFileSize = "Enabled" then do
            status_option = "("status_file_size")"
        end
        else if StatusFileSize = "Disabled" then do
            status_option = ""
        end

        call SetStatus status":Completed:"target_file_name.i" "status_option

        /* This stem is for Comparison with Takeout Data File */
        success_num = success_num + 1
        success_file.success_num = target_file_name.i
        success_file.0 = success_num
    end
    else do
        /* Retry copy using OS/2 COPY COMMAND (Trial beta since 2.49 beta 9, 14.Aug.1998) */
        st_back = status
        call setstatus "** RETRY COPY ****************************"
        call setstatus "* COPY IS FAILED AT VR-REXX VRCopyFile() *"
        call setstatus "* RETRY COPY USING OS/2 COPY COMMAND     *"
        call setstatus "******************************************"
        call SetStatus ">FILE NAME     : "target_file_name.i
        call SetStatus ">ERROR MESSAGE : "error_message
        call SetStatus "******************************************"
        status = st_back
        address cmd "COPY" ftp_local_directory"\"target_file_name.i ftp_remote_directory"\"target_file_name.i
        if rc = 0 then do /* COPY IS ENDED SUCCESSFULY */
            ok = VRSet( "LB_Status",       "BackColor", color_success )
            ok = VRSet( "DT_UploadStatus", "BackColor", color_success )
            ok = VRSet( "DT_UploadStatus", "Caption", "COMP" )

            call SetStatus status":Completed:"target_file_name.i" (COPIED USING OS/2 COPY.EXE)"

            success_num = success_num + 1
            success_file.success_num = target_file_name.i
            success_file.0 = success_num
        end
        else do
            ok = VRSet( "LB_Status",       "BackColor", color_failed )
            ok = VRSet( "DT_UploadStatus", "BackColor", color_failed )
            ok = VRSet( "DT_UploadStatus", "Caption", "FAIL" )

            failed_file_num = failed_file_num + 1
            failed_file.hn.failed_file_num = target_file_name.i
            call SetStatus status":Failed   !"target_file_name.i" [rc="rc"]"
        end
    end

    dir_name_old = dir_name
    dir_num_old  = dir_num

return

/*:VRX         Logoff
*/
Logoff:
if debug_mode = 1 then say "Logoff"

    rc = FtpLogOff()
    call SetStatus "[LOGOFF]"

return

/*:VRX         Logon
*/
Logon:
if debug_mode = 1 then say "Logon"

    TAB_TEXT = "0F"x
    if JasmineMode = "Upload"  then StatusArea = "LB_Status"
    if JasmineMode = "Takeout" then StatusArea = "LB_TakeoutStatus"

    /* LOGON */
    if LogonRetry = "Disabled" then do
        rc = FtpSetUser(ftp_address, ftp_userid, ftp_password, ftp_account)

        rc = FtpSys(operSys)

        if rc = -1 then do
            ok = VRSet( StatusArea, "BackColor", color_failed )
            logon_status = "Failed"
        end
        else do
            logon_status = "Logon"

            server_os = rc
            call SetStatus ">Host type : "rc
        end
    end

    if LogonRetry = "Enabled" then do
        do i = 1 to LogonRetryNumSelected + 1
            rc = FtpSetUser(ftp_address, ftp_userid, ftp_password, ftp_account)

/* FtpSysするとどうもStandard Outに出力がある模様(特に機能的に問題があるわけではない) */
say "----- Call FtpSys() -----"
            rc = FtpSys(operSys)
say "----- End of FtpSys() -----"

            if rc = -1 then do
                ok = VRSet( StatusArea, "BackColor", color_failed )
                logon_status = "Failed"
                if i = LogonRetryNumSelected + 1 then do
                    leave
                end
                else do
                    call SetStatus ">Logon failed : Logon retry #"i
                end
            end
            else do
                ok = VRSet( StatusArea, "BackColor", "<default>" )
                logon_status = "Logon"

                server_os = rc
                call SetStatus ">Host type : "rc
                leave
            end
        end
    end

return

/*:VRX         MakeDestinationDirectory
*/
MakeDestinationDirectory:
if debug_mode = 1 then say "MakeDestinationDirectory"

    dir_name = arg(1)

    dir_num = 1
    do j = 1 to length(dir_name)
        check = substr(dir_name, j, 1)
        if check = "\" then dir_num = dir_num + 1
    end

    rc = VRFileExists(dir_name)

    if rc = 0 then do
        parse var dir_name d.1  "\" d.2  "\" d.3  "\" d.4  "\" d.5  "\" d.6  "\",
                           d.7  "\" d.8  "\" d.9  "\" d.10 "\" d.11 "\" d.12 "\",
                           d.13 "\" d.14 "\" d.15 "\" d.16 "\" d.17 "\" d.18 "\",
                           d.19 "\" d.20 "\" d.21 "\" d.22 "\" d.23 "\" d.24 "\",
                           d.25 "\" d.26 "\" d.27 "\" d.28 "\" d.29 "\" d.30

        dirs_prev = d.1
        do dirs = 2 to dir_num
            if JasmineMode = "Upload" then do
                rc = VRMkDir(dirs_prev"\"d.dirs)

                dirs_prev = dirs_prev"\"d.dirs
            end
        end

        ok = VRSet( "LB_Status",       "BackColor", color_success )
        ok = VRSet( "DT_UploadStatus", "BackColor", color_success )

        ok = VRSet( "DT_UploadStatus", "Caption", "MAKEDIR" )

        call SetStatus ">Make directory ["dirs_prev"]"
    end

return

/*:VRX         MW_Jasmine_Close
*/
MW_Jasmine_Close:
    call Quit
return

/*:VRX         PB_AddAsciiExtension_Click
*/
PB_AddAsciiExtension_Click:
if debug_mode = 1 then say "PB_AddAsciiExtension_Click"

    value = VRGet( "Combo_AsciiModeList", "Value" )

    if value <> "" then do
        select
            when left(value, 2) = "*." then do
                nop
            end
            when left(value, 1) = "." then do
                value = "*"value
            end
            otherwise
                value = "*."value
        end
        position = VRMethod( "Combo_AsciiModeList", "AddString", value,  )
        ok = VRSet( "Combo_AsciiModeList", "Value", "" )
    end
    else do
        ok = VRMethod( "Combo_AsciiModeList", "SetFocus" )
    end

    ok = VRMethod( "Combo_AsciiModeList", "SetFocus" )

return

/*:VRX         PB_AddIgnoreFileExtension_Click
*/
PB_AddIgnoreFileExtension_Click:
if debug_mode = 1 then say "PB_AddIgnoreFileExtension_Click"

    value = VRGet( "Combo_IgnoreFileExtensionList", "Value" )

    if value <> "" then do
        select
            when left(value, 2) = "*." then do
                nop
            end
            when left(value, 1) = "." then do
                value = "*"value
            end
            otherwise
                value = "*."value
        end

        position = VRMethod( "Combo_IgnoreFileExtensionList", "AddString", value,  )
        ok = VRSet( "Combo_IgnoreFileExtensionList", "Value", "" )
    end
    else do
        ok = VRMethod( "Combo_IgnoreFileExtensionList", "SetFocus" )
    end

    ok = VRMethod( "Combo_IgnoreFileExtensionList", "SetFocus" )

return

/*:VRX         PB_AUF_Cancel_Click
*/
PB_AUF_Cancel_Click:
if debug_mode = 1 then say "PB_AUF_Cancel_Click"

    ok = VRDestroy( "SW_SetAlwaysUploadFiles" )

return

/*:VRX         PB_AUF_Save_Click
*/
PB_AUF_Save_Click:
if debug_mode = 1 then say "PB_AUF_Save_Click"

    ok = VRMethod( "LB_AUF_AlwaysUploadFileList", "GetStringList", "auf_lst." )

    do i = 1 to auf_lst.0
        always_upload.auf_selected.i = auf_lst.i
    end
    always_upload.auf_selected.0 = auf_lst.0

    call UpdateAlwaysUploadFileData

    ok = VRMethod( "LB_Status", "Clear" )

    ok = VRDestroy( "SW_SetAlwaysUploadFiles" )

return

/*:VRX         PB_Cancel_CompulsoryUploadFile_Click
*/
PB_Cancel_CompulsoryUploadFile_Click:
if debug_mode = 1 then say "PB_Cancel_CompulsoryUploadFile_Click"

    ok = VRMethod( "ContextMenu_CancelCompulsoryUploadFiles", "Popup")

return

/*:VRX         PB_ChangeUploadStatus_Click
*/
PB_ChangeUploadStatus_Click:
if debug_mode = 1 then say "PB_ChangeUploadStatus_Click"

    /* Set Buttons to Disabled */
    ok = VRSet( "LB_FileList", "Enabled", 0 )
    ok = VRSet( "LB_FileList", "BackColor", "PaleGray" )
    ok = VRSet( "PB_Upload_OK", "Enabled", 0 )
    ok = VRSet( "PB_Upload_Cancel", "Enabled", 0 )
    ok = VRSet( "PB_ChangeUploadStatus", "Enabled", 0 )
    /* * * * * * * * * * * * * */

    ok = VRMethod( "LB_FileList", "GetSelectedStringList", "target_file_list." )

    ok = VRMethod( "LB_FileList", "GetStringList", "all_list." )

    do i = 1 to target_file_list.0
        cus_selected = all_list.0
        do j = 1 to all_list.0
            if target_file_list.i = all_list.j then cus_selected = j
        end

        parse var target_file_list.i target_status ":" target_file

        if target_status = "Enabled" then target_status = "Disabled"
        else if target_status = "Disabled" then target_status = "Enabled"

        upload_status.cus_selected = target_status
        files.cus_selected = left(upload_status.cus_selected, 8, " ")" : "target_file_name.cus_selected

        ok = VRMethod( "LB_FileList", "Delete", cus_selected )
        position = VRMethod( "LB_FileList", "AddString", files.cus_selected, cus_selected )
    end

    ok = VRSet( "PB_ChangeUploadStatus", "Enabled", 0 )

    /* Set Buttons to Enabled */
    ok = VRSet( "LB_FileList", "Enabled", 1 )
    ok = VRSet( "LB_FileList", "BackColor", "<Default>" )
    ok = VRSet( "PB_Upload_OK", "Enabled", 1 )
    ok = VRSet( "PB_Upload_Cancel", "Enabled", 1 )
    ok = VRSet( "PB_ChangeUploadStatus", "Enabled", 1 )
    /* * * * * * * * * * * * * */

return

/*:VRX         PB_ClearAsciiExtension_Click
*/
PB_ClearAsciiExtension_Click:
if debug_mode = 1 then say "PB_ClearAsciiExtension_Click"

    ok = VRSet( "Combo_AsciiModeList", "Value", "" )

    ok = VRMethod( "Combo_AsciiModeList", "SetFocus" )

return

/*:VRX         PB_ClearFailedData_Click
*/
PB_ClearFailedData_Click: 
if debug_mode = 1 then say "PB_ClearFailedData_Click"

    rc = SysFileTree( rff_file, "f.", "f" )
    if f.0 > 0 then do
        rc = SysFileDelete( rff_file )
    end

    ok = VRMethod( "LB_FailedFileList", "Clear" )

    call ReadFailedFileData

return

/*:VRX         PB_ClearIgnoreFileExtension_Click
*/
PB_ClearIgnoreFileExtension_Click:
if debug_mode = 1 then say "PB_ClearIgnoreFileExtension_Click"

    ok = VRSet( "Combo_IgnoreFileExtensionList", "Value", "" )

    ok = VRMethod( "Combo_IgnoreFileExtensionList", "SetFocus" )

return

/*:VRX         PB_ClearSelectedData_Click
*/
PB_ClearSelectedData_Click:
if debug_mode = 1 then say "PB_ClearSelectedData_Click"

    JasmineMode = "Takeout"

    call SetTakeoutButton "Disabled"

    ok = VRMethod( "LB_TakeoutStatus", "Clear" )
    call SetStatus "* * * Jasmine Takeout ver."JasmineVersion" * * *"

    ok = VRMethod( "LB_UploadedFileList", "GetSelectedStringList", "DeleteData." )

    do i = 1 to Deletedata.0
        ok = VRMethod( "LB_UploadedFileList", "DeleteString", DeleteData.i )
    end

    call ReissueTakeoutData

    call ReadTakeoutData

    call SetTakeoutButton "Enabled"

    call SetStatus "* * * End of Takeout (Clear Selected data) * * *"
    call SetStatus " "

    JasmineMode = "Upload"

return

/*:VRX         PB_ClearUploadStatusFile_Click
*/
PB_ClearUploadStatusFile_Click:
if debug_mode = 1 then say "PB_ClearUploadStatusFile_Click"

    rc = SysFileTree( ddf_file, "f.", "f" )

    if f.0 > 0 then do
        rc = SysFileDelete( ddf_file)
        if rc = 0 then do
            ok = VRSet( "PB_ClearUploadStatusFile", "Enabled", 0 )
        end
    end

return

/*:VRX         PB_DefaultSoundSet_Click
*/
PB_DefaultSoundSet_Click:
if debug_mode =1 then say "PB_DefaultSoundSet_Click"

    ok = VRSet( "EF_Sound_Directory", "Value", JasmineDirectory )

    ok = VRSet( "CB_Sound_Start",              "Set", 1 )
    ok = VRSet( "CB_Sound_No_File",            "Set", 1 )
    ok = VRSet( "CB_Sound_Logon_Successfully", "Set", 1 )
    ok = VRSet( "CB_Sound_Logon_Failed",       "Set", 1 )
    ok = VRSet( "CB_Sound_Save_Log",           "Set", 1 )
    ok = VRSet( "CB_Sound_End",                "Set", 1 )

    ok = VRSet( "EF_Start",              "Value", "Start.wav" )
    ok = VRSet( "EF_No_File",            "Value", "Nofile.wav" )
    ok = VRSet( "EF_Logon_Successfully", "Value", "Logon_s.wav" )
    ok = VRSet( "EF_Logon_Failed",       "Value", "Logon_f.wav" )
    ok = VRSet( "EF_Save_Log",           "Value", "Savelog.wav" )
    ok = VRSet( "EF_End",                "Value", "End.wav" )

    ok = VRSet( "EF_Start",              "Enabled", 1 )
    ok = VRSet( "EF_No_File",            "Enabled", 1 )
    ok = VRSet( "EF_Logon_Successfully", "Enabled", 1 )
    ok = VRSet( "EF_Logon_Failed",       "Enabled", 1 )
    ok = VRSet( "EF_Save_Log",           "Enabled", 1 )
    ok = VRSet( "EF_End",                "Enabled", 1 )

    ok = VRSet( "SL_SoundVolume", "Percentile", 80 )

return
/*:VRX         PB_DeleteAsciiExtension_Click
*/
PB_DeleteAsciiExtension_Click:
if debug_mode = 1 then say "PB_DeleteAsciiExtension_Click"

    selected = VRGet( "Combo_AsciiModeList", "Selected" )

    ok = VRMethod( "Combo_AsciiModeList", "Delete", selected )

    ok = VRSet( "Combo_AsciiModeList", "Value", "" )

    ok = VRMethod( "Combo_AsciiModeList", "SetFocus" )

return

/*:VRX         PB_DeleteIgnoreFileExtension_Click
*/
PB_DeleteIgnoreFileExtension_Click:
if debug_mode = 1 then say "PB_DeleteIgnoreFileExtension_Click"

    selected = VRGet( "Combo_IgnoreFileExtensionList", "Selected" )

    ok = VRMethod( "Combo_IgnoreFileExtensionList", "Delete", selected )

    ok = VRSet( "Combo_IgnoreFileExtensionList", "Value", "" )

    ok = VRMethod( "Combo_IgnoreFileExtensionList", "SetFocus" )

return

/*:VRX         PB_DeleteSite_Click
*/
PB_DeleteSite_Click:
if debug_mode = 1 then say "PB_DeleteSite_Click"

    ok = VRLoadSecondary( "SW_AlertDeleteSite", "W" )

return

/*:VRX         PB_DeleteSiteNo_Click
*/
PB_DeleteSiteNo_Click:
if debug_mode = 1 then say "PB_DeleteSiteNo_Click"

    call VRDestroy(SW_AlertDeleteSite)

return

/*:VRX         PB_DeleteSiteYes_Click
*/
PB_DeleteSiteYes_Click:
if debug_mode = 1 then say "PB_DeleteSiteYes_Click"

    selected = VRGet( "DDCB_FtpSiteList", "Selected" )

    j = 0
    if FtpSiteName.0 = 1 then do
        FtpSiteName.0 = 0

        call ClearFtpSiteDetail
    end
    else do
        do i = 1 to FtpSiteName.0
            if i <> selected then do
                j = j + 1
                Mode.j            = Mode.i
                FtpSiteName.j     = FtpSiteName.i
                FtpSiteAddress.j  = FtpSiteAddress.i
                UserID.j          = UserID.i
                Password.j        = Password.i
                LocalDirectory.j  = LocalDirectory.i
                RemoteDirectory.j = RemoteDirectory.i
                Account.j         = Account.i
                LastDate.j        = LastDate.i
                LastTime.j        = LastTime.i
            end
        end
    end

    ok = VRMethod( "DDCB_FtpSiteList", "Clear" )

    FtpSiteName.0 = j
    ok = VRMethod( "DDCB_FtpSiteList", "AddStringList", "FtpSiteName.",  )

    if selected > j then selected = j

    ok = VRSet( "DDCB_FtpSiteList", "Selected", selected )

    ok = VRMethod( "DDCB_FtpSiteList", "SetFocus" )

    call WriteFtpSiteInitialFile

    if Takeout = "Enabled" then do
        call ReadTakeoutData
    end

    call VRDestroy(SW_AlertDeleteSite)

return

/*:VRX         PB_EditSite_Click
*/
PB_EditSite_Click:
if debug_mode = 1 then say "PB_EditSite_Click"

    if FtpSiteName.0 > 0 then do
        new_site = "Edit"

        ok = VRLoadSecondary( "SW_NewSiteName", "W" )
    end

return

/*:VRX         PB_Exit_Click
*/
PB_Exit_Click:
if debug_mode = 1 then say "PB_Exit_Click"

/*
    ok = VRMethod( "ContextMenu_ExitMenu", "Popup")
*/

    call WriteInitialFile

    call quit

return

/*:VRX         PB_ExitLogViewer_Click
*/
PB_ExitLogViewer_Click:
if debug_mode = 1 then say "PB_ExitLogViewer_Click"

    ok = VRDestroy( "SW_LogViewer" )

return

/*:VRX         PB_ExitPreference_Click
*/
PB_ExitPreference_Click:
if debug_mode = 1 then say "PB_ExitPreference_Click"

    ok = VRMethod( "Combo_IgnoreFileExtensionList", "GetStringList", "IgnoreFileExtension." )

    IgnoreFileExtensionList = IgnoreFileExtension.1

    do i = 2 to IgnoreFileExtension.0
        IgnoreFileExtensionList = IgnoreFileExtensionList","IgnoreFileExtension.i
    end

    ok = VRMethod( "Combo_AsciiModeList", "GetStringList", "AsciiExtension." )

    AsciiExtensionList = AsciiExtension.1

    do i = 2 to AsciiExtension.0
        AsciiExtensionList = AsciiExtensionList","AsciiExtension.i
    end

    PreferencePosX = VRGet( "SW_Preference", "Left" )
    PreferencePosY = VRGet( "SW_Preference", "Top" )

    call WriteInitialFile

    PreferenceWindow = "Disabled"

    call VRDestroy(SW_Preference)

return

/*:VRX         PB_ExitTakeout_Click
*/
PB_ExitTakeout_Click:
if debug_mode = 1 then say "PB_ExitTakeout_Click"

    JasmineMode = "Upload"

    if ManualTakeout = "Enabled" then do
        ok = VRMethod( "LB_Status", "Clear" )
    end

    if AutoTakeout = "Enabled" then do
        ok = VRMethod( "LB_TakeoutStatus", "GetStringList", "tko_log." )
        ok = VRMethod( "LB_Status", "AddStringList", "tko_log.",  )
    end

    ok = VRDestroy( "SW_Takeout" )

return

/*:VRX         PB_FailedFileList_Close_Click
*/
PB_FailedFileList_Close_Click: 
if debug_mode = 1 then say "PB_FailedFileList_Close_Click"

    FailedFileListWindow = "Disabled"

    FailedFileListPosX = VRGet( "SW_FailedFileList", "Left" )
    FailedFileListPosY = VRGet( "SW_FailedFileList", "Top" )

    ok = VRDestroy( "SW_FailedFileList" )

return

/*:VRX         PB_LV_ClearAllLogFiles_Click
*/
PB_LV_ClearAllLogFiles_Click:
if debug_mode = 1 then say "PB_LV_ClearAllLogFiles_Click"

    ok = VRMethod( "ContextMenu_ClearAllLogFiles", "Popup")

return

/*:VRX         PB_MUF_Cancel_Click
*/
PB_MUF_Cancel_Click:
if debug_mode = 1 then say "PB_MUF_Cancel_Click"

    ok = VRMethod( "LB_Status", "Clear" )

    ok = VRDestroy( "SW_SetExcludeUploadFiles" )

return

/*:VRX         PB_MUF_ExcludeSelectedDirectory_Click
*/
PB_MUF_ExcludeSelectedDirectory_Click:
if debug_mode = 1 then say "PB_MUF_ExcludeSelectedDirectory_Click"

    selectedstring = VRGet( "LB_MUF_Directory", "SelectedString" )
    muf_selected_file = right(muf_current_dir"\"selectedstring, length(muf_current_dir"\"selectedstring) - length(ftp_local_directory) - 1)
    muf_selected_file = muf_selected_file"\*"

    ok = VRMethod( "LB_MUF_UploadExcludedFileList", "GetStringList", "MUF_current_list." )

    same_file = "Not Available"
    do i = 1 to MUF_current_list.0
        if muf_selected_file = MUF_current_list.i then do
            same_file = "Available"
            leave
        end
    end

    if same_file = "Not Available" then do
        position = VRMethod( "LB_MUF_UploadExcludedFileList", "AddString", muf_selected_file,  )
    end
    else do
        call VRMessage VRWindow(), "'"left(muf_selected_file, length(muf_selected_file) -  2)"' is already selected.", "Jasmine - Set Exclude Upload Files"
    end

return

/*:VRX         PB_MUF_Save_Click
*/
PB_MUF_Save_Click:
if debug_mode = 1 then say "PB_MUF_Save_Click"

    ok = VRMethod( "LB_MUF_UploadExcludedFileList", "GetStringList", "muf_dd." )

    do i = 1 to muf_dd.0
        default_disabled.muf_selected.i = muf_dd.i
    end
    default_disabled.muf_selected.0 = muf_dd.0

    call UpdateDefaultDisabledFileData

    ok = VRMethod( "LB_Status", "Clear" )

    ok = VRDestroy( "SW_SetExcludeUploadFiles" )

return

/*:VRX         PB_NewSite_Cancel_Click
*/
PB_NewSite_Cancel_Click:
if debug_mode = 1 then say "PB_NewSIte_Cancel_Click"

    new_site = "Cancel"

    call VRDestroy(SW_NewSiteName)

return

/*:VRX         PB_NewSite_Clear_Click
*/
PB_NewSite_Clear_Click:
if debug_mode = 1 then say "PB_NewSite_Clear_Click"

    call ClearNewSiteItems

return

/*:VRX         PB_NewSite_Click
*/
PB_NewSite_Click:
if debug_mode = 1 then say "PB_NewSite_Click"

    call ClearFtpSiteDetail

    new_site = "New"
    ok = VRLoadSecondary( "SW_NewSiteName", "W" )

    if new_site = "Cancel" then do
        ok = VRSet( "DDCB_FtpSiteList", "Selected", selected )
    end

return

/*:VRX         PB_NewSite_OK_Click
*/
PB_NewSite_OK_Click:
if debug_mode = 1 then say "PB_NewSite_OK_Click"

    ok = VRSet( "PB_NewSite_OK",      "Enabled", 0 )
    ok = VRSet( "PB_NewSite_Cancel",  "Enabled", 0 )
    ok = VRSet( "PB_NewSite_Clear",   "Enabled", 0 )
    ok = VRSet( "PB_SetCloseCommand", "Enabled", 0 )

    new_site_name = VRGet( "EF_NewSiteName", "Value" )

    /* Direcotry名のCheck (add from 2.49 beta 11)*/
    value = VRGet( "EF_NewLocalDir", "Value" )

    if right(value, 1) = "\" then do
        value = left(value, length(value) - 1)
        ok = VRSet( "EF_NewLocalDir", "Value", value )
    end

    value = VRGet( "EF_NewRemoteDir", "Value" )

    if (right(value, 1) = "\") | (right(value, 1) = "/") then do
        value = left(value, length(value) - 1)
        ok = VRSet( "EF_NewRemoteDir", "Value", value )
    end
    /* */

    if new_site_name = "" then do
        new_site = "Cancel"
    end
    else do
        call SaveFtpSite
    end

    /* 新しいサイト登録時に再度各種データファイルを読み込む (2.81 beta 8, 27.Jun.1999) */
    call ReadTakeoutData
    call ReadFailedFileData
    call ReadDefaultDisabledFileData
    call ReadAlwaysUploadFileData /* 追加＠3.99 beta 13, 27.Jul.2003) */
    call ReadTimerRunData /* 追加 3.99 beta 21, 26.Aug.2004) */

    ok = VRSet( "PB_NewSite_OK",      "Enabled", 1 )
    ok = VRSet( "PB_NewSite_Cancel",  "Enabled", 1 )
    ok = VRSet( "PB_NewSite_Clear",   "Enabled", 1 )
    ok = VRSet( "PB_SetCloseCommand", "Enabled", 1 )

    call VRDestroy(SW_NewSiteName)

return

/*:VRX         PB_NotYet_Click
*/
PB_NotYet_Click:
if debug_mode = 1 then say "PB_NotYet_Click"

    if registry_mode = "Startup" then do
        register_number = ""
    end

    ok = VRDestroy( "SW_Registry" )

return

/*:VRX         PB_OpenLocalFolder_Click
*/
PB_OpenLocalFolder_Click:
if debug_mode = 1 then say "PB_OpenLocalFolder_Click"

    value = VRGet( "EF_LocalDirectory", "Value" )

    if value <> "" then do
        ftp_local_directory  = VRGet( "EF_LocalDirectory", "Value" )

        rc = SysSetObjectData( ftp_local_directory, "OPEN=DEFAULT" )
    end

return

/*:VRX         PB_OpenRegistry_Click
*/
PB_OpenRegistry_Click:
if debug_mode = 1 then say "PB_About_Click"

    call VRLoadSecondary "SW_Registry"

return

/*:VRX         PB_OpenRemoteFolder_Click
*/
PB_OpenRemoteFolder_Click:
if debug_mode = 1 then say "PB_OpenRemoteFolder_Click"

    value = VRGet( "EF_RemoteDirectory", "Value" )

    if value <> "" then do
        ftp_remote_directory  = VRGet( "EF_RemoteDirectory", "Value" )

        rc = SysSetObjectData( ftp_remote_directory, "OPEN=DEFAULT" )
    end

return

/*:VRX         PB_OpenStartupFolder_Click
*/
PB_OpenStartupFolder_Click: 
if debug_mode = 1 then say "PB_OpenStartupFolder_Click"

    rc = SysSetObjectData( "<WP_START>", "OPEN=DEFAULT" )

return

/*:VRX         PB_OpenTakeoutLocalFolder_Click
*/
PB_OpenTakeoutLocalFolder_Click:
if debug_mode = 1 then say "PB_OpenTakeoutLocalFolder_Click"

    JasmineMode = "Takeout"

    ftp_local_directory  = VRGet( "EF_LocalDirectory", "Value" )

    rc = SysSetObjectData( ftp_local_directory, "OPEN=DEFAULT" )

    JasmineMode = "Upload"

return

/*:VRX         PB_Preferences_Click
*/
PB_Preferences_Click:
if debug_mode = 1 then say "PB_Preferences_Click"

    PreferenceWindow = "Enabled"
    ok = VRLoadSecondary( "SW_Preference", "W" )

return

/*:VRX         PB_Registory_Click
*/
PB_Registory_Click:
if debug_mode = 1 then say "PB_Registory_Click"

    value = VRGet( "EF_RegistoryNumber", "Value" )

    if Registry = "TIME IS UP" then rn = RegisterNumber.0 - 1
    else rn = RegisterNumber.0

/*  do i = 1 to RegisterNumber.0 */
    do i = 1 to rn
        if value = RegisterNumber.i then Registry = "Registered"
    end

    if Registry = "Registered" then do
        register_number = Value

        call WriteInitialFile

        ok = VRDestroy( "SW_Registry" )
    end
    else do
        ok = VRSet( "EF_RegistoryNumber", "Value", "" )
        ok = VRSet( "PB_Registory", "Enabled", 0 )
        ok = VRMethod( "EF_RegistoryNumber", "SetFocus" )
    end

return

/*:VRX         PB_ResetLastDay_Click
*/
PB_ResetLastDay_Click:
if debug_mode = 1 then say "PB_ClearLastDay_Click"

    ok = VRSet( "SPIN_LastDay", "Index", 0 )

return

/*:VRX         PB_ResetLastMonth_Click
*/
PB_ResetLastMonth_Click:
if debug_mode = 1 then say "PB_ClearLastMonth_Click"

    ok = VRSet( "SPIN_LastMonth", "Index", 0 )

return

/*:VRX         PB_ResetLastTime_Click
*/
PB_ResetLastTime_Click:
if debug_mode = 1 then say "PB_ClearLastTime_Click"

    ok = VRSet( "SPIN_LastHour", "Index", 1 )
    ok = VRSet( "SPIN_LastMin",  "Index", 1 )

return

/*:VRX         PB_ResetLastYear_Click
*/
PB_ResetLastYear_Click:
if debug_mode = 1 then say "PB_ClearLastYear_Click"

    ok = VRSet( "SPIN_LastYear", "Index", 0 )

return

/*:VRX         PB_Run_Click
*/
PB_Run_Click:
if debug_mode = 1 then say "PB_Run_Click"

    if FtpSiteName.0 > 0 then do
        ok = VRMethod( "LB_Status", "Clear" )

        if TimerRun = "Enabled" then do
            TimerCount_SnapShot = TimerCount
            TR_StartTime = time("S")
        end
    
        call Run
    
        if TimerRun = "Enabled" then do
            TR_EndTime = time("S")
    
            TimerCount = TimerCount_SnapShot + (TR_EndTime - TR_StartTime)
        end
    end

return

/*:VRX         PB_Run_DebugMode_Click
*/
PB_Run_DebugMode_Click:
if debug_mode = 1 then say "PB_Run_DebugMode_Click"

    debug_mode = 1
    ok = VRDestroy( "SW_SelectRunMode" )

return

/*:VRX         PB_Run_NormalMode_Click
*/
PB_Run_NormalMode_Click:
if debug_mode = 1 then say "PB_Run_NormalMode_Click"

    debug_mode = 0
    ok = VRDestroy( "SW_SelectRunMode" )

return

/*:VRX         PB_RunTakeout_Click
*/
PB_RunTakeout_Click:
if debug_mode = 1 then say "PB_RunTakeout_Click"

    JasmineMode = "Takeout"

    takeout_success_num = 0
    takeout_fail_num    = 0

    ok = VRSet( "PB_RunTakeout",     "Visible", 0 )
    ok = VRSet( "IRB_CancelTakeout", "Visible", 1 )

    ok = VRSet( "LB_TakeoutStatus", "BackColor", "<default>" )
    ok = VRMethod( "LB_TakeoutStatus", "Clear" )

    if ManualTakeout = "Enabled" then do
        call SetStatus "* * * Jasmine Takeout ver."JasmineVersion" * * *"
    end

    ok = VRMethod( "LB_UploadedFileList", "GetSelectedStringList", "TakeoutItem." )

    /* LOGON PROCESS */
    ftp_host_name = VRGet( "DDCB_FtpSiteList", "SelectedString" )
    do i = 1 to FtpSiteName.0
        if ftp_host_name = FtpSiteName.0 then do
            selected = i
        end
    end
    ftp_address       = FtpSiteAddress.selected

    ftp_transfer_mode = Mode.selected

    if ManualTakeout = "Enabled" then do
        if ftp_transfer_mode = "FTP" then do
            call SetStatus ">Host name : "ftp_host_name" ("ftp_address")"
        end
        else if ftp_transfer_mode = "COPY" then do
            call SetStatus ">Destination name : "ftp_host_name" (LOCAL COPY)"
        end
    end

    if TakeoutItem.0 > 0 then do
        ftp_userid    = UserID.selected
        ftp_password  = Password.selected
        ftp_local_directory  = LocalDirectory.selected
        ftp_remote_directory = RemoteDirectory.selected
        ftp_account = Account.selected

        /* Set Ribbon Color */
        call SetTakeoutSliderColor

        if ftp_transfer_mode = "FTP" then do
            /* LOGON */
            logon_status = "Logoff"
            call SetStatus "[LOGON]"

            call Logon

            if logon_status = "Logon" then do
                start_time = time(e)
                ok = VRSet( "LB_TakeoutStatus", "BackColor", color_success )

                call SetStatus ">Logon successfully"

                /* Takeout Delete File Routine */
                if ManualTakeout = "Enabled" then do
                    call SetStatus "[TAKEOUT]"
                end

                call TakeoutFile
                end_time = time(e)

                call Logoff
                ok = VRSet( "LB_TakeoutStatus", "BackColor", "<default>" )

                call ReissueTakeoutData

            end
            else if logon_status = "Failed" then do
                start_time = 0
                end_time = 0
                call SetStatus ">Logon failed"
            end
        end
        else if ftp_transfer_mode = "COPY" then do
            /* Takeout Delete File Routine */
            call SetStatus "[TAKEOUT]"

            start_time = time(e)
            call TakeoutFileLocal
            end_time = time(e)

            /*
            call ReissueTakeoutData
            */
        end

        lead_time = end_time - start_time

        if (ftp_transfer_mode = "FTP") & (logon_status = "Failed") then do
            nop
        end
        else do
            call ShowTakeoutStatusSummary
        end
    end
    else if TakeoutItem.0 = 0 then do
        call SetStatus ">No takeout file is selected!"
    end

    if ManualTakeout = "Enabled" then do
        call SetStatus "* * * End of Takeout * * *"
        call SetStatus " "
    end

    ok = VRSet( "IRB_CancelTakeout", "Set", 0 )
    ok = VRSet( "IRB_CancelTakeout", "Visible", 0 )
    ok = VRSet( "PB_RunTakeout", "Visible", 1 )

    if SilentStatusIndication = "Enabled" then do
        ok = VRSet( "LB_TakeoutStatus", "Selected", count  )
    end

    JasmineMode = "Upload"

return

/*:VRX         PB_RunTakeoutAutomatically_Click
*/
PB_RunTakeoutAutomatically_Click: 

    call PB_SelectFilesNotAvailableAtLocalDirectory_Click

    call PB_RunTakeout_Click

return

/*:VRX         PB_SearchLogFiles_Click
*/
PB_SearchLogFiles_Click:
if debug_mode = 1 then say "PB_SearchLogFiles_Click"

    ok = VRMethod( "ContextMenu_CreateTakeoutData", "Popup")

return

/*:VRX         PB_SelectFilesNotAvailableAtLocalDirectory_Click
*/
PB_SelectFilesNotAvailableAtLocalDirectory_Click:
if debug_mode = 1 then say "PB_DeselectAvailableAtLocal_Click"

    JasmineMode = "Takeout"

    call SetTakeoutButton "Disabled"

    ok = VRMethod( "LB_TakeoutStatus", "Clear" )
    call SetStatus "* * * Jasmine Takeout ver."JasmineVersion" * * *"
    call SetStatus "[Select Files Not Available at Local Disk]"

    call SelectAllTakeoutTargetFiles

    ok = VRMethod( "LB_UploadedFileList", "GetSelectedStringList", "tko_sel." )
    ok = VRMethod( "LB_UploadedFileList", "GetSelectedList", "tko_selitem." )

    if tko_sel.0 > 0 then do
        ftp_local_directory  = VRGet( "EF_LocalDirectory", "Value" )
        /*
        rc = SysFileTree( ftp_local_directory"\*.*", "tko_local.", "sof" )
        */

        /* Set Ribbon Color */
        call SetTakeoutSliderColor

        ok = VRMethod( "LB_TakeoutStatus", "GetStringList", "current." )
        ok = VRMethod( "LB_TakeoutStatus", "Delete", current.0 )
        call SetStatus ">Deselecting files..."

        do i = 1 to tko_sel.0

            percentile = 100 - (i * 100) % tko_sel.0
            ok = VRSet( "SL_TakeoutStatus", "Percentile", percentile )

            if ftp_transfer_mode = "FTP" then do
                /*
                do j = 1 to tko_local.0
                    if ftp_local_directory"\"tko_sel.i = tko_local.j then do
                        ok = VRMethod( "LB_UploadedFileList", "Deselect", tko_selitem.i )
                        tko_selitem_num.i = j
                        leave
                    end
                end
                */

                rc = VRFileExists( ftp_local_directory"\"tko_sel.i ) 

                if rc = 1 then do
                        ok = VRMethod( "LB_UploadedFileList", "Deselect", tko_selitem.i )
                end                
            end
            else if ftp_transfer_mode = "COPY" then do
                tmp_fn = right(tko_sel.i, length(tko_sel.i) - length(ftp_remote_directory) - 1)
                tmp_fn = ftp_local_directory"\"tmp_fn

                rc = VRFileExists( tmp_fn ) 

                if rc = 1 then do
                    ok = VRMethod( "LB_UploadedFileList", "Deselect", tko_selitem.i )
                end

            end
        end

        ok = VRMethod( "LB_UploadedFileList", "GetSelectedStringList", "tko_sel." )
        ok = VRMethod( "LB_TakeoutStatus", "GetStringList", "current." )
        ok = VRMethod( "LB_TakeoutStatus", "Delete", current.0 )
        call SetStatus ">Selected files : "tko_sel.0

        if tko_sel.0 > 0 then do
            call SetStatus "[Selected File List]"

            do i = 1 to tko_sel.0
                call SetStatus right(i, length(tko_sel.0), "0")":"tko_sel.i
            end
        end
    end
    else if tko_sel.0 = 0 then do
        ok = VRMethod( "LB_TakeoutStatus", "GetStringList", "current." )
        ok = VRMethod( "LB_TakeoutStatus", "Delete", current.0 )

        if ftp_transfer_mode = "FTP" then do
            call SetStatus ">There are no files previously uploaded."
        end
        else if ftp_transfer_mode = "COPY" then do
            call SetStatus ">There are no files previously copied."
        end
    end

    call SetTakeoutButton "Enabled"

    call SetStatus "* * * End of `Select Files Not Available at Local Disk - Takeout' * * *"
    call SetStatus " "

    JasmineMode = "Upload"

return

/*:VRX         PB_Set_CompulsoryUploadFile_Click
*/
PB_Set_CompulsoryUploadFile_Click:
if debug_mode = 1 then say "PB_Set_CompulsoryUploadFile_Click"

    compulsory_upload_file.0 = 0

    ok = VRMethod( "LB_CompulsoryUploadFile", "GetSelectedStringList", "cuf2." )

    if cuf2.0 > 0 then do
        do i = 1 to cuf2.0
            compulsory_upload_file.i = cuf2.i

            compulsory_upload_file_size.i = 0
            do j = 1 to cuf.0
                if cuf2.i = cuf.j then do
                    compulsory_upload_file_size.i = cuf_size.j
                    leave
                end
            end
        end
    end
    compulsory_upload_file.0      = cuf2.0
    compulsory_upload_file_size.0 = cuf2.0

    ok = VRDestroy( SW_SelectCompulsoryUploadFile )

return

/*:VRX         PB_SetAlwaysUploadFiles_Click
*/
PB_SetAlwaysUploadFiles_Click:
if debug_mode = 1 then say "PB_SetAlwaysUploadFiles_Click"

    if FtpSiteName.0 > 0 then do
        ftp_host_name = VRGet( "DDCB_FtpSiteList", "SelectedString" )
        do i = 1 to FtpSiteName.0
            if ftp_host_name = FtpSiteName.i then do
                auf_selected = i
            end
        end
    
        ftp_local_directory  = LocalDirectory.auf_selected
    
        ok = VRLoadSecondary( "SW_SetAlwaysUploadFiles", "W" )
    end

return

/*:VRX         PB_SetCloseCommand_Click
*/
PB_SetCloseCommand_Click:
if debug_mode = 1 then say "PB_SetCloseCommand_Click"

    clscmd_old = VRGet( "EF_NewCloseCommand", "Value" )
    clscmd = VRFileDialog( VRWindow(), "External Command", "Open", "*.cmd;*.exe;*.com;*.bat" )
    if clscmd = "" then clscmd = clscmd_old

    ok = VRSet( "EF_NewCloseCommand", "Value", clscmd )

return

/*:VRX         PB_SetExcludedFiles_Click
*/
PB_SetExcludedFiles_Click:
if debug_mode = 1 then say "PB_SetExcludedFiles_Click"

    if FtpSiteName.0 > 0 then do
        ftp_host_name = VRGet( "DDCB_FtpSiteList", "SelectedString" )
        do i = 1 to FtpSiteName.0
            if ftp_host_name = FtpSiteName.i then do
                muf_selected = i
            end
        end
    
        ftp_local_directory  = LocalDirectory.muf_selected
    
        ok = VRLoadSecondary( "SW_SetExcludeUploadFiles", "W" )
    end

return

/*:VRX         PB_SetLanguage_Click
*/
PB_SetLanguage_Click:
if debug_mode = 1 then say "PB_SetLanguage_Click"

    JasmineLanguage_old = JasmineLanguage

    JasmineLanguage = VRFileDialog( VRWindow(), "External Command", "Open", "*.lng")

    if translate(right(Jasminelanguage, 4)) = ".LNG" then do
        lp = lastpos("\", JasmineLanguage)
        JasmineLanguage = right(JasmineLanguage, length(JasmineLanguage) - lp)

        parse var JasmineLanguage JasmineLanguage ".lng" .

        call ReadLanguageFile JasmineLanguage

        ok = VRSet( "PB_SetLanguage", "Caption", LanguageName )

        window_key_name = "L_MainWindow"
        call SetLanguage window_key_name

        window_key_name = "L_Preference"
        call SetLanguage window_key_name
    end
    else do
        LanguageMode = "Default"
        ok = VRSet( "RB_Language_Default", "Set", 1 )
        ok = VRSet( "PB_SetLanguage", "Enabled", 0 )
    end

return

/*:VRX         PB_SetSound_Click
*/
PB_SetSound_Click:
if debug_mode = 1 then say "PB_SetSound_Click"

    ok = VRLoadSecondary( "SW_SetSound", "W" )

return

/*:VRX         PB_SetStatusFont_Click
*/
PB_SetStatusFont_Click:
if debug_mode = 1 then say "PB_SetStatusFont_Click"

    font_old = StatusFont
    StatusFont = VRFontDialog( VRWindow(), StatusFont, "Select Status Area Font")
    if StatusFont = "" then StatusFont = font_old

    ok = VRSet( "EF_StatusFont", "Font", StatusFont )
    ok = VRSet( "EF_StatusFont", "Value", StatusFont )

    call SetFont
    call SetPreferenceFont

    call WriteInitialFile

return

/*:VRX         PB_SetWindowFont_Click
*/
PB_SetWindowFont_Click:
if debug_mode = 1 then say "PB_SetFont_Click"

    font_old = font
    font = VRFontDialog( VRWindow(), font, "Choose a font!")
    if font = "" then font = font_old

    ok = VRSet( "EF_WindowFont", "Font", font )
    ok = VRSet( "EF_WindowFont", "Value", font )

    call SetFont
    call SetPreferenceFont

    call WriteInitialFile

return

/*:VRX         PB_Sound_Cancel_Click
*/
PB_Sound_Cancel_Click:
if debug_mode = 1 then say "PB_Sound_Cancel_Click"

    call VRDestroy(SW_SetSound)

return

/*:VRX         PB_Sound_OK_Click
*/
PB_Sound_OK_Click:
if debug_mode = 1 then say "PB_Sound_OK_Click"

    SoundDirectory = temp_sound_dir

    set = VRGet( "CB_Sound_Start", "Set" )
    if set = 1 then SoundStart = "Enabled"
    else            SoundStart = "Disabled"
    SoundStartRes = VRGet( "EF_Start", "Value" )

    set = VRGet( "CB_Sound_No_File", "Set" )
    if set = 1 then SoundNoFile = "Enabled"
    else            SoundNoFile = "Disabled"
    SoundNoFileRes = VRGet( "EF_No_File", "Value" )

    set = VRGet( "CB_Sound_Logon_Successfully", "Set" )
    if set = 1 then SoundLogonSuccessfully = "Enabled"
    else            SoundLogonSuccessfully = "Disabled"
    SoundLogonSuccessfullyRes = VRGet( "EF_Logon_Successfully", "Value" )

    set = VRGet( "CB_Sound_Logon_Failed", "Set" )
    if set = 1 then SoundLogonFailed = "Enabled"
    else            SoundLogonFailed = "Disabled"
    SoundLogonFailedRes = VRGet( "EF_Logon_Failed", "Value" )

    set = VRGet( "CB_Sound_Save_Log", "Set" )
    if set = 1 then SoundSaveLog = "Enabled"
    else            SoundSaveLog = "Disabled"
    SoundSaveLogRes = VRGet( "EF_Save_Log", "Value" )

    set = VRGet( "CB_Sound_End", "Set" )
    if set = 1 then SoundEnd = "Enabled"
    else            SoundEnd = "Disabled"
    SoundEndRes = VRGet( "EF_End", "Value" )

    percentile = VRGet( "SL_SoundVolume", "Percentile" )
    SoundVolume = percentile

    call WriteInitialFile

    call VRDestroy(SW_SetSound)

return

/*:VRX         PB_Takeout_Click
*/
PB_Takeout_Click:
if debug_mode = 1 then say "PB_Takeout_Click"

    ManualTakeout = "Enabled"
    ok = VRMethod( "LB_Status", "Clear" )

    call StartTakeout

return

/*:VRX         PB_TimerRun_Change_Click
*/
PB_TimerRun_Change_Click: 
if debug_mode = 1 then say "PB_TimerRun_Change_Click"

    TRi  = VRGet( "LB_TimerRun_List", "Selected" )

    call SetTimerRunData

    ok = VRSet( "LB_TimerRun_List", "Selected", TRi )

return

/*:VRX         PB_TimerRun_Delete_Click
*/
PB_TimerRun_Delete_Click: 
if debug_mode = 1 then say "PB_TimerRun_Delete_Click"

    ok = VRMethod( "ContextMenu_TimerRun_ConfirmDelete", "Popup")

return

/*:VRX         PB_TimerRun_Return_Click
*/
PB_TimerRun_Return_Click: 
if debug_mode = 1 then say "PB_TimerRun_Return_Click"

    /* Save Timer Run Data */
    call UpdateTimerRunData

    TimerRunPosX = VRGet( "SW_TimerRun", "Left" )
    TimerRunPosY = VRGet( "SW_TimerRun", "Top" )

    ok = VRDestroy( "SW_TimerRun" )

return

/*:VRX         PB_TimerRun_Set_Click
*/
PB_TimerRun_Set_Click: 
if debug_mode = 1 then say "PB_TimerRun_Set_Click"

    ok = VRMethod( "LB_TimerRun_List", "GetStringList", "TR_all." )
    TRi = TR_all.0 + 1

    ok = VRSet( "LB_TimerRun_List", "Selected", TRi )

    call SetTimerRunData

return

/*:VRX         PB_TimerRun_Setup_Click
*/
PB_TimerRun_Setup_Click: 
if debug_mode = 1 then say "PB_TimerRun_Setup_Click"

    ok = VRLoadSecondary( "SW_TimerRun", "W" )

return

/*:VRX         PB_Upload_Cancel_Click
*/
PB_Upload_Cancel_Click:
if debug_mode = 1 then say "PB_Upload_Cancel_Click"

    ok = VRMethod( "ContextMenu_CancelUploadFileList", "Popup")

return

/*:VRX         PB_Upload_OK_Click
*/
PB_Upload_OK_Click:
if debug_mode = 1 then say "PB_Upload_OK_Click"

    ok = VRMethod( "LB_FileList", "GetStringList", "AllList." )

    do i = 1 to FtpSiteName.0
       if ftp_host_name = FtpSiteName.i then do
            host_num = i
        end
    end

    j = 0
    default_disabled.host_num.0 = 0
    do i = 1 to AllList.0
        parse var AllList.i st ":" fn
        if st = "Disabled" then do
            j = j + 1
            default_disabled.host_num.j = strip(fn)
        end
    end
    default_disabled.host_num.0 = j

    /* 前回のDisabled Listのうち今回未使用分を追加する */
    j = default_disabled.host_num.0
    do i = 1 to default_disabled_old.0
        j = j + 1
        default_disabled.host_num.j = default_disabled_old.i
    end
    default_disabled.host_num.0 = j

    /* Remember Upload Status : Default Disabled File */
    if RememberUploadStatus = "Enabled" then do
        call UpdateDefaultDisabledFileData
    end

    upload = "Enabled"
    ok = VRDestroy(SW_CheckFile)

return

/*:VRX         PB_ViewFailedFile_Click
*/
PB_ViewFailedFile_Click:
if debug_mode = 1 then say "PB_ClearFailedFile_Click"

    f = 0 
    do i = 1 to FtpSiteName.0

        if failed_file.i.0 > 0 then do
            do j = 1 to failed_file.i.0
                f = f + 1

                failed_file_list_latest.f = FtpSiteName.i":"failed_file.i.j
            end
        end
        else do
           nop
        end

        failed_file_list_latest.0 = f
    end

    ok = VRLoadSecondary( "SW_FailedFileList", "W" )

return

/*:VRX         PB_ViewLogFile_Click
*/
PB_ViewLogFile_Click:
if debug_mode = 1 then say "PB_ViewLogFile_Click"

    ok = VRLoadSecondary( "SW_LogViewer", "w" )

return

/*:VRX         PlaySound
*/
PlaySound:
if debug_mode = 1 then say "PlaySound"

    if Sound = "ON" then do
        select
            when status_sound = "START"            then SoundFile = SoundDirectory"\"SoundStartRes
            when status_sound = "NO_FILES"         then SoundFile = SoundDirectory"\"SoundNoFileRes
            when status_sound = "LOGON_SUCCESSFLY" then SoundFile = SoundDirectory"\"SoundLogonSuccessfullyRes
            when status_sound = "LOGON_FAILED"     then SoundFile = SoundDirectory"\"SoundLogonFailedRes
            when status_sound = "SAVE_LOG"         then SoundFile = SoundDirectory"\"SoundSaveLogRes
            when status_sound = "END"              then SoundFile = SoundDirectory"\"SoundEndRes

            otherwise status_sound = "NONE"
        end

        ok = VRSet( "IPB_SoundSwitch", "PicturePath", "#138" )

        if status_sound <> "NONE" then do
            MciCmd = "open "SoundFile" alias wav wait"
            MacRc = mciRxSendString(MciCmd, "RetSt", "0", "0")

            MciCmd = "capability wav device type wait"
            MacRc = mciRxSendString(MciCmd, "RetSt", "0", "0")

            MciCmd = "status wav length wait"
            MacRc = mciRxSendString(MciCmd, "RetSt", "0", "0")

            MciCmd = "set wav audio volume "SoundVolume" wait"
            MacRc = mciRxSendString(MciCmd, "RetSt", "0", "0")

            MciCmd = "play wav wait"
            MacRc = mciRxSendString(MciCmd, "RetSt", "0", "0")

            MciCmd = "close wav wait"
            MacRc = mciRxSendString(MciCmd, "RetSt", "0", "0")
        end

        ok = VRSet( "IPB_SoundSwitch", "PicturePath", "#134" )

    end

return

/*:VRX         Quit
*/
Quit:
    window = VRWindow()
    call VRSet window, "Shutdown", 1
    drop window
return

/*:VRX         RB_HKE_DateMonthIndication_Alphabet_Click
*/
RB_HKE_DateMonthIndication_Alphabet_Click:
if debug_mode = 1 then say "RB_HKE_DateMonthIndication_Alphabet_Click"

    HkeDateMonthIndication = "Alphabet"

return

/*:VRX         RB_HKE_DateMonthIndication_Number_Click
*/
RB_HKE_DateMonthIndication_Number_Click:
if debug_mode = 1 then say "RB_HKE_DateMonthIndication_Number_Click"

    HkeDateMonthIndication = "Number"

return

/*:VRX         RB_HKE_DateSeparator_Dot_Click
*/
RB_HKE_DateSeparator_Dot_Click:
if debug_mode = 1 then say "RB_HKE_DateSeparator_Dot_Click"

    HkeDateSeparator = "Dot"

return

/*:VRX         RB_HKE_DateSeparator_Slash_Click
*/
RB_HKE_DateSeparator_Slash_Click:
if debug_mode = 1 then say "RB_HKE_DateSeparator_Slash_Click"

    HkeDateSeparator = "Slash"

return

/*:VRX         RB_HKE_DateStyle_ddmmyyyy_Click
*/
RB_HKE_DateStyle_ddmmyyyy_Click:
if debug_mode = 1 then say "RB_HKE_DateStyle_ddmmyyyy_Click"

    HkeDateStyle = "ddmmyyyy"

return

/*:VRX         RB_HKE_DateStyle_mmddyyyy_Click
*/
RB_HKE_DateStyle_mmddyyyy_Click:
if debug_mode = 1 then say "RB_HKE_DateStyle_mmddyyyy_Click"

    HkeDateStyle = "mmddyyyy"

return

/*:VRX         RB_HKE_DateStyle_yyyymmdd_Click
*/
RB_HKE_DateStyle_yyyymmdd_Click:
if debug_mode = 1 then say "RB_HKE_DateStyle_yyyymmdd_Click"

    HkeDateStyle = "yyyymmdd"

return

/*:VRX         RB_HKE_FileSize_Bit_Click
*/
RB_HKE_FileSize_Bit_Click:
if debug_mode = 1 then say "RB_HKE_FileSize_Bit_Click"

    HkeFileSizeStyle = "Bit"

return

/*:VRX         RB_HKE_FileSize_Byte_Click
*/
RB_HKE_FileSize_Byte_Click:
if debug_mode = 1 then say "RB_HKE_FileSize_Byte_Click"

    HkeFileSizeStyle = "Byte"

return

/*:VRX         RB_HKE_FileSize_KByte_Click
*/
RB_HKE_FileSize_KByte_Click:
if debug_mode = 1 then say "RB_HKE_FileSize_KByte_Click"

    HkeFileSizeStyle = "KByte"

return

/*:VRX         RB_Language_Custom_Click
*/
RB_Language_Custom_Click:
if debug_mode = 1 then say "RB_Language_Custom_Click"

    LanguageMode = "Custom"
    ok = VRSet( "PB_SetLanguage", "Enabled", 1 )

    call PB_SetLanguage_Click

return

/*:VRX         RB_Language_Default_Click
*/
RB_Language_Default_Click:
if debug_mode = 1 then say "RB_Language_Default_Click"

    LanguageMode = "Default"
    ok = VRSet( "PB_SetLanguage", "Enabled", 0 )

return

/*:VRX         RB_Log_Daily_Click
*/
RB_Log_Daily_Click:
if debug_mode = 1 then say "RB_Log_Daily_Click"

    LoggingType = "Daily"

    call WriteInitialFile

return

/*:VRX         RB_Log_Monthly_Click
*/
RB_Log_Monthly_Click:
if debug_mode = 1 then say "RB_Log_Monthly_Click"

    LoggingType = "Monthly"

    call WriteInitialFile

return

/*:VRX         RB_NewMode_Copy_Click
*/
RB_NewMode_Copy_Click:
if debug_mode = 1 then say "RB_NewMode_Copy_Click"

    CopyMode = "COPY"

    call SetModeSet

return

/*:VRX         RB_NewMode_FTP_Click
*/
RB_NewMode_FTP_Click:
if debug_mode = 1 then say "RB_NewMode_FTP_Click"

    CopyMode = "FTP"

    call SetModeSet

return

/*:VRX         RB_RunFixedTime_Click
*/
RB_RunFixedTime_Click: 
if debug_mode = 1 then say "RB_RunFixedTime_Click"

    TR_Mode = "Run Fixed Time"

    ok = VRSet( "DT_RunRegurary_TextEvery",                "Enabled", 0 )
    ok = VRSet( "SPIN_TimerRun_RunRegularly_Interval",     "Enabled", 0 )
    ok = VRSet( "SPIN_TimerRun_RunRegularly_IntervalUnit", "Enabled", 0 )

    ok = VRSet( "SPIN_TimerRun_FixedTime_HH",              "Enabled", 1 )
    ok = VRSet( "DT_RunRegurary_TextColon",                "Enabled", 1 )
    ok = VRSet( "SPIN_TimerRun_RunFixedTime_MM",           "Enabled", 1 )

    ok = VRSet( "PB_TimerRun_Set",    "Enabled", 1 )

return

/*:VRX         RB_RunRegularly_Click
*/
RB_RunRegularly_Click: 
if debug_mode = 1 then say "RB_RunRegularly_Click"

    TR_Mode = "Run Regularly"

    ok = VRSet( "DT_RunRegurary_TextEvery",                "Enabled", 1 )
    ok = VRSet( "SPIN_TimerRun_RunRegularly_Interval",     "Enabled", 1 )
    ok = VRSet( "SPIN_TimerRun_RunRegularly_IntervalUnit", "Enabled", 1 )

    ok = VRSet( "SPIN_TimerRun_FixedTime_HH",              "Enabled", 0 )
    ok = VRSet( "DT_RunRegurary_TextColon",                "Enabled", 0 )
    ok = VRSet( "SPIN_TimerRun_RunFixedTime_MM",           "Enabled", 0 )

    ok = VRSet( "PB_TimerRun_Set",    "Enabled", 1 )

return

/*:VRX         RB_Upload_ASCII_Click
*/
RB_Upload_ASCII_Click:
if debug_mode = 1 then say "RB_Upload_ASCII_Click"

    TransferMode = "ASCII"

    ok = VRSet( "Combo_AsciiModeList", "BackColor", "PaleGray" )
    ok = VRSet( "Combo_AsciiModeList", "ForeColor", "DarkGray" )

    call SetAsciiMode

return

/*:VRX         RB_Upload_Auto_Click
*/
RB_Upload_Auto_Click:
if debug_mode = 1 then say "RB_Upload_Auto_Click"

    TransferMode = "AUTO"

    ok = VRSet( "Combo_AsciiModeList", "BackColor", "<default>" )
    ok = VRSet( "Combo_AsciiModeList", "ForeColor", "<default>" )

    call SetAsciiMode

return

/*:VRX         RB_Upload_Binary_Click
*/
RB_Upload_Binary_Click:
if debug_mode = 1 then say "RB_Upload_Binary_Click"

    TransferMode = "BINARY"

    ok = VRSet( "Combo_AsciiModeList", "BackColor", "PaleGray" )
    ok = VRSet( "Combo_AsciiModeList", "ForeColor", "DarkGray" )

    call SetAsciiMode

return

/*:VRX         ReadAlwaysUploadFileData
*/
ReadAlwaysUploadFileData:
if debug_mode = 1 then say "ReadAlwaysUploadFileData"

    rc = SysFileTree( ddf_file, "chkauf.", "f")

    /* ここでも初期化する */
    do i = 1 to FtpSiteName.0
        always_upload.i.0 = 0

        always_upload_style.i = 0
        always_upload_data.i = 0
    end

    if chkauf.0 = 1 then do
        host_total = FtpSiteName.0
        f = 0
        flug = 0
        do until lines(auf_file) = 0
            line_text=linein(auf_file)

            if left(line_text, 1) = "#" then do
                parse var line_text "#HOSTNAME:" name
                new_host = "Yes"
                do i = 1 to FtpSiteName.0
                    if name = FtpSiteName.i then do
                        host_num = i
                        new_host = "No"
                        leave
                    end
                end
                if new_host = "Yes" then do
                    host_total = host_total + 1
                    host_num = host_total
                end

                always_upload.host_num.0 = 0

                f = 0
                flug = 1
            end
            else if left(line_text, 1) = "%" then do
                temp = right(line_text, length(line_text) - 1)
                parse var temp always_upload_style.i "," always_upload_data.i
            end
            else do
                if flug = 1 then do
                    f = f + 1
                    always_upload.host_num.f = line_text
                    always_upload.host_num.0 = f
                end
            end
        end
        call lineout auf_file
    end

return

/*:VRX         ReadDefaultDisabledFileData
*/
ReadDefaultDisabledFileData:
if debug_mode = 1 then say "ReadDefaultDisabledFileData"

    rc = SysFileTree( ddf_file, "chkddf.", "f")

    /* ここでも初期化する */
    do i = 1 to FtpSiteName.0
        default_disabled.i.0 = 0
    end

/*  ddf_host_name.0 = 0 */
    if chkddf.0 = 1 then do
        host_total = FtpSiteName.0
        f = 0
        flug = 0
        do until lines(ddf_file) = 0
            line_text=linein(ddf_file)

            if left(line_text, 1) = "#" then do
                parse var line_text "#HOSTNAME:" name
                new_host = "Yes"
                do i = 1 to FtpSiteName.0
                    if name = FtpSiteName.i then do
                        host_num = i
                        new_host = "No"
                        leave
                    end
                end
                if new_host = "Yes" then do
                    host_total = host_total + 1
                    host_num = host_total
                end

                default_disabled.host_num.0 = 0

                f = 0
                flug = 1
            end
            else do
                if flug = 1 then do
                    f = f + 1
                    default_disabled.host_num.f = line_text
                    default_disabled.host_num.0 = f
                end
            end
        end
        call lineout ddf_file
    end

return

/*:VRX         ReadFailedFileData
*/
ReadFailedFileData:
if debug_mode = 1 then say "ReadFailedFileData"

    rc = SysFileTree( rff_file, "chkrff.", "f")

    /* ここでも初期化 */
    do i = 1 to FtpSiteName.0
        failed_file.i.0 = 0
    end

/*  rff_host_name.0 = 0 */
    if chkrff.0 = 1 then do
        host_total = FtpSiteName.0
        f = 0
        flug = 0
        do until lines(rff_file) = 0
            line_text=linein(rff_file)

            if left(line_text, 1) = "#" then do
                parse var line_text "#HOSTNAME:" name
                new_host = "Yes"
                do i = 1 to FtpSiteName.0
                    if name = FtpSiteName.i then do
                        host_num = i
                        new_host = "No"
                        leave
                    end
                end
                if new_host = "Yes" then do
                    host_total = host_total + 1
                    host_num = host_total
                end

                failed_file.host_num.0 = 0

                f = 0
                flug = 1
            end
            else do
                if flug = 1 then do
                    f = f + 1
                    failed_file.host_num.f = line_text
                    failed_file.host_num.0 = f
                end
            end
        end
        call lineout rff_file
    end

return

/*:VRX         ReadFtpSiteInitialFile
*/
ReadFtpSiteInitialFile:
if debug_mode = 1 then say "ReadFtpSiteInitialFile"

    ftp_site_initial_file = JasmineDirectory"\FtpSite.ini"

    i = 0
    do until lines(ftp_site_initial_file) = 0
        line_text=linein(ftp_site_initial_file)
        if left(line_text, 1) = "[" then do
            i = i + 1
            /* Initialize */
            FtpSiteName.i     = ""
            FtpSiteAddress.i  = ""
            UserID.i          = ""
            Password.i        = ""
            Mode.i            = "FTP"
            LocalDirectory.i  = ""
            RemoteDirectory.i = ""
            Account.i         = ""
            CloseCommand.i    = ""
            LastDate.i        = ""
            LastTime.i        = ""
        end
        parse var line_text keyword '=' detail

        if left(keyword, 10) = "; FtpSite.ini" then do
            parse var keyword "(" old_version ")"
        end

        select
            when keyword = "FtpSiteName"     then FtpSiteName.i     = detail
            when keyword = "FtpSiteAddress"  then FtpSiteAddress.i  = detail
            when keyword = "UserID"          then UserID.i          = detail
            when keyword = "Password"        then Password.i        = detail
            when keyword = "Mode"            then Mode.i            = translate(detail) /* for update from 2.49 beta 1 */
            when keyword = "LocalDirectory"  then LocalDirectory.i  = detail
            when keyword = "RemoteDirectory" then RemoteDirectory.i = detail
            when keyword = "Account"         then Account.i         = detail
            when keyword = "CloseCommand"    then CloseCommand.i    = detail
            when keyword = "ExitCommand"     then CloseCommand.i    = detail /* <- 互換性の為必要。そのうち削除する予定。 (2.81 beta 1, 14.May.1999) */
            when keyword = "LastDate"        then LastDate.i        = detail
            when keyword = "LastTime"        then LastTime.i        = detail
            otherwise nop
        end
    end

    call lineout ftp_site_initial_file
    FtpSiteName.0 = i

return

/*:VRX         ReadInitialFile
*/
ReadInitialFile:
if debug_mode = 1 then say "ReadInitialFile"

    initial_file = JasmineDirectory"\Jasmine.ini"

    i = 0
    do until lines(initial_file) = 0
        line_text=linein(initial_file)

        parse var line_text keyword '=' detail

        if left(keyword, length("; Jasmine.ini - Jasmine Initial File")) = "; Jasmine.ini - Jasmine Initial File" then do
            parse var keyword "(" old_version ")"
        end

        select
            when keyword = "PosX" then PosX = detail
            when keyword = "PosY" then PosY = detail

            when keyword = "PreferencePosX" then PreferencePosX = detail
            when keyword = "PreferencePosY" then PreferencePosY = detail

            when keyword = "FailedFileListPosX" then FailedFileListPosX = detail
            when keyword = "FailedFileListPosY" then FailedFileListPosY = detail

            when keyword = "Logging" then do
                Logging = detail
                if Logging = "Enabled"  then do
                    ok = VRSet( "CB_Log", "Set", 1 )
                end
                if Logging = "Disabled" then do
                    ok = VRSet( "CB_Log", "Set", 0 )
                end

                call SetLogging Logging
            end

            when keyword = "LoggingType" then do
                LoggingType = detail
                if LoggingType = "Daily" then do
                    ok = VRSet( "RB_Log_Daily", "Set", 1 )
                end
                if LoggingType = "Monthly" then do
                    ok = VRSet( "RB_Log_Monthly", "Set", 1 )
                end
            end

            when keyword = "LogDirectory" then do
                LogDirectory = detail
            end

            when keyword = "TransferMode" then TransferMode = detail

            when keyword = "ManageUploadFiles" then do
                ManageUploadFiles = detail
            end

            when keyword = "UploadFileCheck" then do
                UploadFileCheck = detail
            end

            when keyword = "Option" then do
                Option = detail
                select
                    when Option = "ON" then do
                        nop
                    end
                    when Option = "OFF" then do
                        nop
                    end
                end
            end

            when keyword = "SoundDirectory" then SoundDirectory = detail

            when keyword = "SoundVolume" then SoundVolume = detail

            when keyword = "Sound" then do
                Sound = detail
                parse var Sound Sound "," SoundStart "," SoundNoFile "," SoundLogonSuccessfully "," SoundLogonFailed "," SoundSaveLog "," SoundEnd
                select
                    when Sound = "ON" then do
                        ok = VRSet( "IPB_SoundSwitch", "PicturePath", "#134" )
                        ok = VRSet( "PB_SetSound", "Enabled", 1 )
                    end
                    when Sound = "OFF" then do
                        ok = VRSet( "IPB_SoundSwitch", "PicturePath", "#136" )
                        ok = VRSet( "PB_SetSound", "Enabled", 0 )
                    end
                end
            end

            when keyword = "SoundRes" then do
                parse var detail SoundStartRes "," SoundNoFileRes "," SoundLogonSuccessfullyRes "," SoundLogonFailedRes "," SoundSaveLogRes "," SoundEndRes
            end

            when keyword = "Font" then do
                font = detail
                if font = "FONT" then font = "9.WarpSans"
            end

            when keyword = "StatusFont" then do
                StatusFont = detail
                if StatusFont = "STATUSFONT" then StatusFont = "9.WarpSans"
            end

            when keyword = "RibbonColor" then do
                RibbonColor_all = detail
                if (left(old_version, 4) <= "4.00") then do
                    RibbonColor_all="BDB76B,EEE8AA,DEB887,DDA0DD,66CDAA"
                end /*8FBC89,*/

                i = 0
                dummy = RibbonColor_all
                do forever
                    i = i + 1
                    RibbonColor.i = left(dummy, 6)

                    if length(dummy) < 7 then do
                        leave
                    end
                    else do
                        dummy = right(dummy, length(dummy) - 7)
                    end
                end

                RibbonColor.0 = i
                RibbonColor_all = RibbonColor.1
                do i = 2 to RibbonColor.0
                    RibbonColor_all = RibbonColor_all","RibbonColor.i
                end
            end

            when keyword = "LogonRetry" then LogonRetry = detail
            when keyword = "LogonRetryNum" then LogonRetryNum = detail
            when keyword = "LogonRetryNumSelected" then LogonRetryNumSelected = detail

            when keyword = "ChangeUpperToLower" then ChangeUpperToLower = detail

/*
            when (keyword = "CloseCommandMode") | (keyword = "ExitCommandMode") then do
                CloseCommandMode = detail

                if CloseCommandMode = "Enabled" then do
                    ok = VRSet( "DT_CloseCommand", "Enabled", 1 )
                    ok = VRSet( "EF_CloseCommand", "Enabled", 1 )
                end
                else if CloseCommandMode = "Disabled" then do
                    ok = VRSet( "DT_CloseCommand", "Enabled", 0 )
                    ok = VRSet( "EF_CloseCommand", "Enabled", 0 )
                end
            end
*/

            when keyword = "StatusTransferMode"  then StatusTransferMode  = detail
            when keyword = "StatusFileSize"      then StatusFileSize      = detail
            when keyword = "StatusUploadSummary" then StatusUploadSummary = detail

            when keyword = "IgnoreFileExtensionMode" then IgnoreFileExtensionMode = detail
            when keyword = "IgnoreFileExtensionList" then IgnoreFileExtensionList = detail
            when keyword = "ShowIgnoredFileList"     then ShowIgnoredFileList = detail

            when keyword = "AsciiExtensionList"   then AsciiExtensionList  = detail

            when keyword = "ColorSet" then do
                if left(detail, 1) <> "(" then do /* v1.12 beta 12からの仕様に対応 */
                    ColorSet = detail
                    parse var ColorSet color_success_hex","color_attention_hex","color_failed_hex
                end
            end

/*
            when keyword = "Registry" then register_number = detail
*/

/*
            when keyword = "Takeout" then do
                Takeout = detail
                select
                    when Takeout = "Enabled" then do
                        ok = VRSet( "PB_Takeout", "Visible", 1 )
                    end
                    when Takeout = "Disabled" then do
                        ok = VRSet( "PB_Takeout", "Visible", 0 )
                    end
                    otherwise
                        Takeout = "Disabled"
                        ok = VRSet( "PB_Takeout", "Visible", 0 )
                end
            end
*/

            /* AutoTakeout */
            when keyword = "AutoTakeout" then do
                AutoTakeout = detail
            end


            when keyword = "RetryFailedFile" then do
                RetryFailedFile = detail
            end

            when keyword = "RememberUploadStatus" then do
                RememberUploadStatus = detail
            end

            when keyword = "SilentStatusIndication" then SilentStatusIndication = detail

            when keyword = "SequentialRunMode" then SequentialRunMode = detail
            when keyword = "DefaultRunMode" then DefaultRunMode = detail
            when keyword = "DisableSoundDuringSequentialRunning" then DisableSoundDuringSequentialRunning = detail

            when keyword = "LanguageMode" then LanguageMode = detail
            when keyword = "Language" then JasmineLanguage = detail

            when keyword = "HtmlKeywordExchangeFunction" then HtmlKeywordExchangeFunction = detail
            when keyword = "HkeFileSizeStyle" then HkeFileSizeStyle = detail
            when keyword = "HkeDateStyle" then HkeDateStyle = detail
            when keyword = "HkeDateSeparator" then HkeDateSeparator = detail
            when keyword = "HkeDateMonthIndication" then HkeDateMonthIndication = detail
            when keyword = "HkeTimeStyle" then HkeTimeStyle = detail

            when keyword = "TimerRun" then TimerRun = detail
            when keyword = "TimerRunPosX" then TimerRunPosX = detail
            when keyword = "TimerRunPosY" then TimerRunPosY = detail

            when keyword = "CopyShadowToStartupFolder" then CopyShadowToStartupFolder = detail
            when keyword = "StartMinimized" then StartMinimized = detail
            when keyword = "RunAtStartup" then RunAtStartup = detail
            when keyword = "ShowTimerCounter" then ShowTimerCounter = detail
        
            when keyword = "CopyWhenNoTargetFile" then CopyWhenNoTargetFile = detail

            otherwise nop
        end
    end
    call lineout initial_file

/*
/*
 * Logは恒久的にEnabledに仕様変更 (3.28 beta 7)
 * これはDisabled時、各種Data Fileの処理等々でいろいろ不具合が出るため。
 */
    /* Set Log Environment */
/*  call SetLogging Logging */
    call SetLogging "Enabled"
*/
    /* Set Ignore File Extesnsion */
    dummy = IgnoreFIleExtensionList
    i = 0
    do forever
        parse var dummy ext "," dummy

        if ext <> "" then do
            i = i + 1
            IgnoreFileExtension.i = ext
        end
        if dummy = "" then leave
    end
    IgnoreFileExtension.0 = i

    /* Set Ascii Mode Extesnsion */
    dummy = AsciiExtensionList
    i = 0
    do forever
        parse var dummy asc "," dummy

        if asc <> "" then do
            i = i + 1
            AsciiExtension.i = asc
        end
        if dummy = "" then leave
    end
    AsciiExtension.0 = i

    /* Set Sequential Run Mode */
    call SetSequentialRunModeParams SequentialRunMode

    /* Compulsory Upload File */
    if SequentialRunMode = "Selected Site Only" then do
        ok = VRSet( "CB_CompulsoryUploadFile", "Enabled", 1 )
    end
    else do
        ok = VRSet( "CB_CompulsoryUploadFile", "Enabled", 0 )
    end

    /* Logファイルの西暦表示を2桁から4桁に仕様変更したためここで過去のファイルをRenameする */
    /* 注意！Version Up時に一度だけ実行される。 */
    if (left(old_version, 4) < 2.91) | (left(old_version, 9) = "2.91 beta") | (left(old_version, 11) = "2.99 beta 1")then do
        old_log_files = JasmineDirectory"\"LogDirectory"\*.log"
        rc = SysFileTree( old_log_files, "olf.", "of" )
        if olf.0 > 0 then do
            do i = 1 to olf.0
                rtn = VRParseFileName( olf.i, "N")
                if left(rtn, 2) < 68 then new_name = VRParseFileName( olf.i, "D")":"VRParseFileName( olf.i, "P")"\20"rtn"."VRParseFileName( olf.i, "E")
                else                      new_name = VRParseFileName( olf.i, "D")":"VRParseFileName( olf.i, "P")"\19"rtn"."VRParseFileName( olf.i, "E")

                ok = VRRenameFile( olf.i, new_name )
            end
        end
    end

    /* Set Timer Run */
    if TimerRun = "Enabled" then do
        ok = VRSet( "TM_TimerRun_Timer", "Visible", 1 )

        ok = VRSet( "PB_TimerRun_Setup", "Enabled", 1 )
        ok = VRSet( "TM_TimerRun_Timer", "Enabled", 1 )

        ok = VRSet( "IPB_TimerRun", "PicturePath", "#150" )
    end
    else do
        ok = VRSet( "TM_TimerRun_Timer", "Visible", 0 )

        ok = VRSet( "PB_TimerRun_Setup", "Enabled", 0 )
        ok = VRSet( "TM_TimerRun_Timer", "Enabled", 0 )

        ok = VRSet( "IPB_TimerRun", "PicturePath", "#152" )
    end

    if (ShowTimerCounter = "Yes") & (TimerRun = "Enabled") then do
        ok = VRSet( "TM_TimerRun_Timer", "Visible", 1 )
    end
    else do
        ok = VRSet( "TM_TimerRun_Timer", "Visible", 0 )
    end

return

/*:VRX         ReadLanguageFile
*/
ReadLanguageFile:
if debug_mode = 1 then say "ReadLanguageFile"

    parse arg trg

    target_language_file = trg".lng"

    i = 0
    cm_i = 0

    L_MainWindow                 =  1
    L_CheckFile                  =  2
    L_NewSiteName                =  3
    L_SetSound                   =  4
    L_Preference                 =  5
    L_Registry                   =  6
    L_Takeout                    =  7
    L_AlertDeleteSite            =  8
    L_SelectCompulsoryUploadFile =  9
    L_LogViewer                  = 10
    L_SetDisabledFiles           = 11
    L_AlwaysUploadFiles          = 12
    L_FailedFileList             = 13
    L_TimmerRun                  = 14

    object_name    = 1
    object_caption = 2

    do until lines(target_language_file) = 0
        line_text = strip(linein(target_language_file))

        if left(line_text, 1) = "#" then do
            parse var line_text "#" window_name

            i = 0
            select
                when window_name = "MW_Jasmine"                    then window_key_name = L_MainWindow
                when window_name = "SW_CheckFile"                  then window_key_name = L_CheckFile
                when window_name = "SW_NewSiteName"                then window_key_name = L_NewSiteName
                when window_name = "SW_SetSound"                   then window_key_name = L_SetSound
                when window_name = "SW_Preference"                 then window_key_name = L_Preference
                when window_name = "SW_Registry"                   then window_key_name = L_Registry
                when window_name = "SW_Takeout"                    then window_key_name = L_Takeout
                when window_name = "SW_AlertDeleteSite"            then window_key_name = L_AlertDeleteSite
                when window_name = "SW_SelectCompulsoryUploadFile" then window_key_name = L_SelectCompulsoryUploadFile
                when window_name = "SW_LogViewer"                  then window_key_name = L_LogViewer
                when window_name = "SW_SetExcludeUploadFiles"      then window_key_name = L_SetDisabledFiles
                when window_name = "SW_SetAlwaysUploadFiles"       then window_key_name = L_SetAlwaysUploadFiles
                when window_name = "SW_FailedFileList"             then window_key_name = L_FailedFileList
                when window_name = "SW_TimerRun"                   then window_key_name = L_TimerRun
                otherwise
                    nop
            end
        end
        else if translate(left(line_text, 8)) = "LANGUAGE" then do
            parse var line_text . "=" LanguageName
        end
        else if left(line_text, 1) = ";" then do
            nop /* this is comment */
        end
        else do
            parse var line_text keyword "=" detail

            if line_text <> "" then do
                i = i + 1
                language.window_key_name.object_name.i    = keyword
                language.window_key_name.object_caption.i = detail

                /* Set Changeable Label Text : モードにより変化するラベルをここで変数指定 */
                if keyword = "DT_LocalDir" then do
                    parse var detail  Text_LocalDir_FTP  "," Text_LocalDir_COPY
                end
                else if keyword = "DT_RemoteDir" then do
                    parse var detail Text_RemoteDir_FTP "," Text_RemoteDir_COPY
                end
                else if keyword = "PB_OpenRegistry" then do
                    parse var detail Text_OpenRegistry_NotRegistered "," Text_OpenRegistry_Registered
                end
            end

            language.window_key_name.object_name.0    = i
            language.window_key_name.object_caption.0 = i

            ContextMenu.object_name.0    = cm_i
            ContextMenu.object_caption.0 = cm_i
        end
    end
    call lineout target_language_file

return

/*:VRX         ReadTakeoutData
*/
ReadTakeoutData:
if debug_mode = 1 then say "ReadTakeoutData"

    rc = SysFileTree( tko_file, "chktko.", "f")

    if chktko.0 = 1 then do
        host_total = FtpSiteName.0
        f = 0
        flug = 0
        host_mode = "FTP"
        do until lines(tko_file) = 0
            line_text=linein(tko_file)

            if left(line_text, 1) = "#" then do
                parse var line_text "#HOSTNAME:" name
                new_host = "Yes"
                do i = 1 to FtpSiteName.0
                    if name = FtpSiteName.i then do
                        host_num = i
                        new_host = "No"

                        if Mode.i = "FTP" then host_mode = "FTP"
                        else if Mode.i = "COPY" then host_mode = "COPY"

                        leave
                    end
                end
                if new_host = "Yes" then do
                    host_total = host_total + 1
                    host_num = host_total
                end

                tko_host_name.host_num = name
                tko_host_name.0 = host_total
                f = 0
                flug = 1
            end
            else do
                if (flug = 1) & (host_mode = "FTP") then do
                    f = f + 1
                    tko_host.host_num.f = line_text
                    tko_host.host_num.0 = f
                end
            end
        end
        call lineout tko_file
    end

return

/*:VRX         ReadTimerRunData
*/
ReadTimerRunData: 
if debug_mode = 1 then say "ReadTimerRunData"

    rc = SysFileTree( tr_file, "chktr.", "f")

    TRi = 0

    if chktr.0 = 1 then do
        do until lines(tr_file) = 0
            line_text=linein(tr_file)

            if left(line_text, length("Jasmine ver.")) = "Jasmine ver." then do
            end
            else do
                TRi = TRi + 1
                parse var line_text TimerRunMode.TRSITENAME.TRi ", " TimerRunMode.TRMODE.TRi ", " TimerRunMode.TRPARAM.TRi
            end
        end
    end
    TimerRunMode.TRSITENAME.0 = TRi
    TimerRunMode.TRMODE.0     = TRi
    TimerRunMode.TRPARAM.0    = TRi

    call lineout tr_file

return

/*:VRX         ReissueTakeoutData
*/
ReissueTakeoutData:
if debug_mode = 1 then say "ReissueTakeoutData"

    call SetStatus "[Reissue Takeout Data]"

    tko_host.selected.0 = 0
    ok = VRMethod( "LB_UploadedFileList", "GetStringList", "reissue_tko." )

    do i = 1 to reissue_tko.0
        tko_host.selected.i = reissue_tko.i
    end
    tko_host.selected.0 = reissue_tko.0

    /* Reissue Takeout File */
    call WriteTakeoutDataFile

    call ReadTakeoutData

return

/*:VRX         Run
*/
Run: 
if debug_mode = 1 then say "Run"

    /* Log Directoryがない場合はここで作成する */
    rc = SysFileTree( JasmineDirectory"\"LogDirectory, "log.", "od" )
    if log.0 = 0 then do
        ok = VrMkDir(JasmineDirectory"\"LogDirectory)
    end

    RunMode = VRGet( "SPIN_JasmineRunMode", "Value" )

    /* Upload Status Log */
    if RunMode <> "Selected Site Only" then do
        usl = 0
        UploadStatusLog.0 = 0
    end

    if RunMode <> "Selected Site Only" then do
        text = "* JASMINE SEQUENTIAL RUN MODE : "RunMode" *"
        length = length(text)
        dummy = "*"
        do i = 2 to length
            dummy = dummy"*"
        end
        call SetStatus dummy
        call SetStatus text
        call SetStatus dummy
        call SetStatus " "

        MRM_start_time = time("S")

        /* Upload Status Log (since 2.81 beta 9, 01.Jul.1999) */
        ok = VRMethod( "LB_Status", "GetStringList", "usl_temp." )

        do i = 1 to usl_temp.0
            usl = usl + 1
            UploadStatusLog.usl = usl_temp.i
        end
        UploadStatusLog.0 = usl
    end

    /* Disable Sound During Sequential Running - Sound OFF */
    Sound_old = ""
    if (Sound = "ON") & (DisableSoundDuringSequentialRunning = "Yes") & (RunMode <> "Selected Site Only") then do
        if mmos2 = "Enabled" & SoundStart = "Enabled" then do
            status_sound = "START"
            call PlaySound
        end

        Sound_old = Sound
        Sound = "OFF"
    end

    select
        when RunMode = "Selected Site Only" then do
            call StartUpload
        end
        when RunMode = "All Sites" then do
            if FtpSiteName.0 > 0 then do
                do site = 1 to FtpSiteName.0
                    ok = VRSet( "DDCB_FtpSiteList", "Selected", site )
                    call DDCB_FtpSiteList_Change

                    call StartUpload
                end
                ok = VRSet( "DDCB_FtpSiteList", "Selected", 1 )
            end
        end
        when RunMode = "All FTP Sites" then do
            if FtpSiteName.0 > 0 then do
                do site = 1 to FtpSiteName.0
                    ok = VRSet( "DDCB_FtpSiteList", "Selected", site )
                    call DDCB_FtpSiteList_Change

                    if Mode.site = "FTP" then do
                        call StartUpload
                    end
                end
                ok = VRSet( "DDCB_FtpSiteList", "Selected", 1 )
            end
        end
        when RunMode = "All Copy Sites" then do
            if FtpSiteName.0 > 0 then do
                do site = 1 to FtpSiteName.0
                    ok = VRSet( "DDCB_FtpSiteList", "Selected", site )
                    call DDCB_FtpSiteList_Change

                    if Mode.site = "COPY" then do
                        call StartUpload
                    end
                end
                ok = VRSet( "DDCB_FtpSiteList", "Selected", 1 )
            end
        end
        otherwise
            nop
    end

    if RunMode <> "Selected Site Only" then do
        ok = VRMethod( "LB_Status", "Clear" )

        MRM_end_time = time("S")
        MRM_time = MRM_end_time - MRM_start_time

        ok = VRSet( "SL_UploadStatus", "Percentile", 0 )

        /* Show All Upload Status Log (since 2.81 beta 9, 01.Jul.1999) */
        ok = VRMethod( "LB_Status", "AddStringList", "UploadStatusLog.",  )

        text = "* END OF JASMINE SEQUENTIAL RUN MODE : "RunMode" *"
        length = length(text)
        dummy = "*"
        do i = 2 to length
            dummy = dummy"*"
        end
        call SetStatus dummy
        call SetStatus text
        call SetStatus dummy

        ok = VRMethod( "LB_Status", "GetStringList", "dummy." )
        ok = VRSet( "LB_Status", "Selected", dummy.0 )

        ok = VRSet( "SPIN_JasmineRunMode", "Value", DefaultRunMode )
    end

    /* Disable Sound During Sequential Running - Sound ON */
    if (Sound_old = "ON") & (DisableSoundDuringSequentialRunning = "Yes") & (RunMode <> "Selected Site Only") then do
        Sound = "ON"

        if mmos2 = "Enabled" & SoundEnd = "Enabled" then do
            status_sound = "END"
            call PlaySound
        end
    end

    /* Disable Compulsory Upload File */
    if CompulsoryUploadFile = "Enabled" then do
        CompulsoryUploadFile = "Disabled"
        ok = VRSet( "CB_CompulsoryUploadFile", "Set", 0 )
    end

return

/*:VRX         RunCloseCommand
*/
RunCloseCommand:
if debug_mode = 1 then say "RunCloseCommand"

    /* ftp_close_command */
    if ftp_close_command <> "" then do
        call SetStatus "[Close Command]"
        call SetStatus ">Run close command : "ftp_close_command

        address cmd "Start "ftp_close_command
    end

return

/*:VRX         RunCopyMode
*/
RunCopyMode:
if debug_mode = 1 then say "RunCopyMode"

    parse arg hn /* Selected Host Number */

    start_time = time(e)
    ok = VRSet( "LB_Status", "BackColor", color_success )

    ok = VRSet( "SPIN_LastYear",  "Index", now_year - 1967 )
    ok = VRSet( "SPIN_LastMonth", "Index", now_month )
    ok = VRSet( "SPIN_LastDay",   "Index", now_day )
    ok = VRSet( "SPIN_LastHour",  "Index", now_hour + 1 )
    ok = VRSet( "SPIN_LastMin",   "Index", now_min + 1 )

    LastDate.hn = now_month""now_day""now_year
    LastTime.hn = now_hour":"now_min

    call MakeDestinationDirectory ftp_remote_directory

    call SetStatus "[Local Copy]"

    bmp = 0
    call LocalCopy hn
    ok = VRSet( "DT_UploadStatus", "Caption", "" )

    end_time = time(e)
    lead_time = end_time - start_time

    /* Compare with Takeout Data File */
    if ftp_transfer_mode = "FTP" then do
        if Takeout = "Enabled" then do
            if success_file.0 > 0 then do
                call UpdateTakeoutData
            end
        end
    end
    else if ftp_transfer_mode = "COPY" then do
        nop
    end

    /* Uploadに失敗したFileがある時のfailed_fileのUpdate */
    if RetryFailedFile = "Enabled" then do
        if failed_file_num > 0 then do
            failed_file.hn.0 = failed_file_num
        end
        else do
            failed_file.hn.0 = 0
        end

        call UpdateFailedFileData
    end

    if StatusUploadSummary = "Enabled" then do
        call ShowUploadStatusSummary
    end

    if CloseCommandMode = "Enabled" then do
        call RunCloseCommand
    end

    call WriteFtpSiteInitialFile

return

/*:VRX         RunFtpMode
*/
RunFtpMode:
if debug_mode = 1 then say "RunFtpMode"

    parse arg hn /* Selected Host Number */

    logon_status = "Logoff"
    call SetStatus "[LOGON]"

    call Logon

    if logon_status = "Logon" then do
        start_time = time(e)
        ok = VRSet( "LB_Status",       "BackColor", color_success )
        ok = VRSet( "DT_UploadStatus", "BackColor", color_success )
        ok = VRSet( "DT_UploadStatus", "Caption", "LOGON" )

        call SetStatus ">Logon successfully"

        if mmos2 = "Enabled" & SoundLogonSuccessfully = "Enabled" then do
            status_sound = "LOGON_SUCCESSFLY"
            call PlaySound
        end

        ok = VRSet( "SPIN_LastYear",  "Index", now_year - 1967 )
        ok = VRSet( "SPIN_LastMonth", "Index", now_month )
        ok = VRSet( "SPIN_LastDay",   "Index", now_day )
        ok = VRSet( "SPIN_LastHour",  "Index", now_hour + 1 )
        ok = VRSet( "SPIN_LastMin",   "Index", now_min + 1 )

        LastDate.hn = now_month""now_day""now_year
        LastTime.hn = now_hour":"now_min

/* FtpChDirするとどうもStandard Outに出力がある模様(特に機能的に問題があるわけではない) */
say "----- Call FtpChDir() ----- DIR="ftp_remote_directory
        rc = FtpChDir(ftp_remote_directory)
say "----- End of FtpChDir() -----"

        if rc <> 0 then do
            temp = ftp_remote_directory

/*          if temp > 0 then do */
            if length(temp) > 0 then do
                i = 0
                do forever
                    i = i + 1
                    pos = pos("/", temp)

                    if pos > 0 then do
                        rmt_dir = left(temp, pos - 1)
                    end
                    else if pos = 0 then do
                        rmt_dir = temp
                    end

                    if rmt_dir <> "" then do

                        /* FtpChDirするとどうもStandard Outに出力がある模様(特に機能的に問題があるわけではない) */
                        say "----- Call FtpChDir() ----- DIR="rmt_dir
                        rc = FtpChDir(rmt_dir)
                        say "----- End of FtpChDir() -----"

                        if rc <> 0 then do
                            /* FtpMkDirするとどうもStandard Outに出力がある模様(特に機能的に問題があるわけではない) */
                            say "----- Call FtpMkDir() ----- DIR="rmt_dir
                            rc = FtpMkDir(rmt_dir)
                            say "----- End of FtpMkDir() -----"

                            ok = VRSet( "LB_Status",       "BackColor", color_success )
                            ok = VRSet( "DT_UploadStatus", "BackColor", color_success )
                            ok = VRSet( "DT_UploadStatus", "Caption", "MAKEDIR" )

                            /* FtpMkDirのrc=0時はDirectoryを作成 */
                            if rc = 0 then do
                                call SetStatus ">Make directory ["rmt_dir"]"
                            end

                            /* FtpChDirするとどうもStandard Outに出力がある模様(特に機能的に問題があるわけではない) */
                            say "----- Call FtpChDir() ----- DIR="rmt_dir
                            rc = FtpChDir(rmt_dir)
                            say "----- End of FtpChDir() -----"
                        end

                        ok = VRSet( "LB_Status",       "BackColor", color_success )
                        ok = VRSet( "DT_UploadStatus", "BackColor", color_success )
                        ok = VRSet( "DT_UploadStatus", "Caption", "CHGDIR" )

                        call SetStatus ">Change directory ["rmt_dir"]"
                    end

                    if pos = 0 then leave

                    temp = right(temp, length(temp) - pos)
                end
            end
        end

        call SetStatus "[Upload]"

        bmp = 0

        call Upload hn
        ok = VRSet( "DT_UploadStatus", "Caption", "" )

        call Logoff
        end_time = time(e)
        lead_time = end_time - start_time

        /* Compare with Takeout Data File */
        if Takeout = "Enabled" then do
            if success_file.0 > 0 then do
                call UpdateTakeoutData
            end
        end

        /* Uploadに失敗したFileがある時のfailed_fileのUpdate */
        if RetryFailedFile = "Enabled" then do
            if failed_file_num > 0 then do
                failed_file.hn.0 = failed_file_num
            end
            else do
                failed_file.hn.0 = 0
            end

            call UpdateFailedFileData
        end

        ok = VRSet( "LB_Status",       "BackColor", "White" )
        ok = VRSet( "DT_UploadStatus", "BackColor", "White" )
        ok = VRSet( "DT_UploadStatus", "Caption", "LOGOFF" )

        if StatusUploadSummary = "Enabled" then do
            call ShowUploadStatusSummary
        end

        if CloseCommandMode = "Enabled" then do
            call RunCloseCommand
        end

        call WriteFtpSiteInitialFile
    end
    else if logon_status = "Failed" then do
        call SetStatus ">Logon failed"

        if mmos2 = "Enabled" & SoundLogonFailed = "Enabled" then do
            call PlaySound
        end
    end

return

/*:VRX         SaveFtpSite
*/
SaveFtpSite:
if debug_mode = 1 then say "SaveFtpSite"

    selected = VRGet( "DDCB_FtpSiteList", "Selected" )

    if new_site = "New" then do
        new = FtpSiteName.0 + 1
        selected = selected + 1
        FtpSiteName.new     = new_site_name

        Mode.new = CopyMode
        if Mode.new = "FTP" then do
            FtpSiteAddress.new  = strip( VRGet( "EF_NewAddress",     "Value" ) )
            UserID.new          = strip( VRGet( "EF_NewUserID",      "Value" ) )
            Password.new        = strip( VRGet( "EF_NewPassword",    "Value" ) )
            Account.new         = strip( VRGet( "EF_NewAccount",     "Value" ) )
        end
        else if Mode.new = "COPY" then do
            FtpSiteAddress.new  = ""
            UserID.new          = ""
            Password.new        = ""
            Account.new         = ""
        end

        LocalDirectory.new  = strip( VRGet( "EF_NewLocalDir",    "Value" ) )
        RemoteDirectory.new = strip( VRGet( "EF_NewRemoteDir",   "Value" ) )

        CloseCommand.new     = strip( VRGet( "EF_NewCloseCommand", "Value" ) )

        LastDate.new        = "02271968"
        LastTime.new        = "06:15"

        Mode.new = CopyMode

        FtpSiteName.0 = new
        ok = VRMethod( "DDCB_FtpSiteList", "Clear" )

        ok = VRMethod( "DDCB_FtpSiteList", "AddStringList", "FtpSiteName.",  )
        ok = VRSet( "DDCB_FtpSiteList", "Selected", new )

        ok = VRMethod( "EF_FtpAddress", "SetFocus" )

        ok = VRSet( "SL_EditSiteDataFile", "Percentile", 100 )
    end
    else if new_site = "Edit" then do
        FtpSiteName.selected     = strip( VRGet( "EF_NewSiteName",    "Value" ) )

        /* Site Nameが変更になったときに各種Data File(Takeout.lst/Failed.lst/Disabled.lst)のDataも修正する */
        if FtpSiteName.selected <> FtpSiteName_old then do
            do data_file = 1 to 5
                /* Read Takeout Data */
                rnd = random(1, RibbonColor.0)
                RibbonColor_temp = RibbonColor.rnd
                r_red   = X2D(left(RibbonColor_temp, 2))
                r_green = X2D(right(left(RibbonColor_temp, 4), 2))
                r_blue  = X2D(right(RibbonColor_temp, 2))
                RibbonColor_dec = "("r_red","r_green","r_blue")"

                ok = VRSet( "SL_EditSiteDataFile", "RibbonColor", RibbonColor_dec )

                if data_file = 1 then do
                    tgt_data_file = tko_file
                end
                if data_file = 2 then do
                    tgt_data_file = rff_file
                end
                if data_file = 3 then do
                    tgt_data_file = ddf_file
                end
                if data_file = 4 then do
                    tgt_data_file = auf_file
                end
                if data_file = 5 then do
                    tgt_data_file = tr_file
                end

                if data_file <> 5 then do
                    rc = SysFileTree( tgt_data_file, "df.", "f")
    
                    if df.0 = 1 then do
                        i = 0
                        do until lines(tgt_data_file) = 0
                            line_text=linein(tgt_data_file)
    
                            i = i + 1
    
                            if left(line_text, 1) = "#" then do
                                parse var line_text "#HOSTNAME:" name
                                if  strip(name) = FtpSiteName_old then do
                                    ln.i = "#HOSTNAME:"FtpSiteName.selected
                                end
                                else do
                                    ln.i = line_text
                                end
                            end
                            else do
                                ln.i = line_text
                            end
                        end
                    end
                    call lineout tgt_data_file
                    ln.0 = i
                end

/* Timer Run Dataのアップデート */
                else if data_file = 5 then do

                rc = SysFileTree( tgt_data_file, "df.", "f")

                    if df.0 = 1 then do
                        i = 0
                        do until lines(tgt_data_file) = 0
                            line_text=linein(tgt_data_file)
    
                            i = i + 1
               
                            if left(line_text, length(FtpSiteName_old)) = FtpSiteName_old then do
                                parse var line_text name "," condition
    
                                ln.i = FtpSiteName.selected", "strip(condition)
                            end
                            else do
                                ln.i = line_text
                            end
                        end
                    end
                    call lineout tgt_data_file
                    ln.0 = i
                end

                /* Delete Target Data : 消してから新規作成する */
                rc = SysFileDelete(tgt_data_file)

                /* Create Takeout Data */
                do i = 1 to ln.0
                    call lineout tgt_data_file, ln.i

                    /* スムーズに表示するように... */
                    if ln.0 < 1000 then do
                        percent = (i * 100) % ln.0
                        ok = VRSet( "SL_EditSiteDataFile", "Percentile", percent )
                    end
                    else if (1000<= ln.0) & (ln.0 < 5000) then do
                        if i // 10 = 0 then do
                            percent = (i * 100) % ln.0
                            ok = VRSet( "SL_EditSiteDataFile", "Percentile", percent )
                        end
                    end
                    else if 5000 <= ln.0 then do
                        if i // 25 = 0 then do
                            percent = (i * 100) % ln.0
                            ok = VRSet( "SL_EditSiteDataFile", "Percentile", percent )
                        end
                    end
                end
                call lineout tgt_data_file

                if data_file = 1 then call ReadTakeoutData
                if data_file = 1 then call ReadFailedFileData
                if data_file = 1 then call ReadDefaultDisabledFileData
            end
        end
        /* * * * * * * * * * * * * * * * * * * * * * * * * * */

        Mode.selected = CopyMode
        if Mode.selected = "FTP" then do
            FtpSiteAddress.selected  = strip( VRGet( "EF_NewAddress",  "Value" ) )
            UserID.selected          = strip( VRGet( "EF_NewUserID",   "Value" ) )
            Password.selected        = strip( VRGet( "EF_NewPassword", "Value" ) )
            Account.selected         = strip( VRGet( "EF_NewAccount",  "Value" ) )
        end
        else if Mode.selected = "COPY" then do
            FtpSiteAddress.selected  = ""
            UserID.selected          = ""
            Password.selected        = ""
            Account.selected         = ""
        end

        LocalDirectory.selected  = strip( VRGet( "EF_NewLocalDir",      "Value" ) )
        RemoteDirectory.selected = strip( VRGet( "EF_NewRemoteDir",     "Value" ) )
        CloseCommand.selected     = strip( VRGet( "EF_NewCloseCommand", "Value" ) )

        ok = VRMethod( "DDCB_FtpSiteList", "Clear" )

        ok = VRMethod( "DDCB_FtpSiteList", "AddStringList", "FtpSiteName.",  )
        ok = VRSet( "DDCB_FtpSiteList", "Selected", selected )

        ok = VRMethod( "EF_FtpAddress", "SetFocus" )
    end
    else do
        ok = VRSet( "DDCB_FtpSiteList", "Selected", selected )
    end

    call WriteFtpSiteInitialFile

return

/*:VRX         SaveLog
*/
SaveLog:
if debug_mode = 1 then say "SaveLog"

    log_file = JasmineDirectory"\"LogDirectory"\"log_file

    ok = VRMethod( "LB_Status", "GetStringList", "loglog." )

    rc = SysFileTree( log_file, "lf.", "of" )
    if lf.0 = 0 then do
        call lineout log_file, loglog.1, 1
    end
    else if lf.0 > 0 then do
        call lineout log_file, loglog.1
    end

    do i = 2 to loglog.0
        call lineout log_file, loglog.i
    end
    call lineout log_file, "   "

    call lineout log_file

    call ListLogFile

return

/*:VRX         SearchMMOS2
*/
SearchMMOS2:
if debug_mode = 1 then say "SearchMMOS2"

    boot_drive = left(VRIniDir(), 2)
    config_sys = boot_drive"\config.sys"

    mmos2 = "Disabled"
    do until lines(config_sys) = 0
        line_text=strip(linein(config_sys),,'=')

        if translate(left(line_text, 16)) = "DEVICE="boot_drive"\MMOS2\" then do
            mmos2 = "Enabled"
        end
    end
    call lineout config_sys

return

/*:VRX         SearchTargetFiles
*/
SearchTargetFiles:
if debug_mode = 1 then say "SearchTargetFiles"

    rc = SysFileTree( ftp_local_directory"\*", "localfile.", "sf" )

    j = 0
    ignore_file_num    = 0
    ignore_file_name.0 = 0
    copy_when_no_target.0 = 0 /* COPY MODEで相手側にそのファイルがない場合、修正が無くてもコピーする */
    do i = 1 to localfile.0
        parse var localfile.i file_date.i file_time.i file_size.i file_attrib.i file_name.i

        parse var file_date.i file_date_month.i "/" file_date_day.i "/" file_date_year.i
        if file_date_year.i > 50 then do
            file_date_year.i = "19"file_date_year.i
        end
        else do
            file_date_year.i = "20"file_date_year.i
        end
        file_date_month.i = right(file_date_month.i, 2, "0")
        file_date_day.i   = right(file_date_day.i,   2, "0")
        file_date.i = file_date_month.i""file_date_day.i""file_date_year.i

        parse var file_time.i hour ":" min
        if translate(right(min, 1)) = "P" & hour <> 12 then hour = hour + 12
        file_time_hour.i = right(hour,          2, "0")
        file_time_min.i  = right(left(min, 2),  2, "0")

        file_time.i = file_time_hour.i":"file_time_min.i
        file_name.i = right(file_name.i, length(file_name.i) - length(ftp_local_directory) - 2)

        /* JUDGEMENT */
        /* FTP ModeとCOPY ModeでTarget Fileの選択Logicを分離  (3.99 beta 15, 03.Aug.2003) */
        if MODE.selected = "FTP" then do
            select
                when file_date_year.i > last_year then do
                    target = "YES"
                end
                when file_date_year.i = Last_year then do
                    select
                        when file_date_month.i > last_month then do
                            target = "YES"
                        end
                        when file_date_month.i = last_month then do
                            select
                                when file_date_day.i > last_day then do
                                    target = "YES"
                                end
                                when file_date_day.i = last_day then do
                                    select
                                        when file_time_hour.i > last_hour then do
                                            target = "YES"
                                        end
                                        when file_time_hour.i = last_hour then do
                                            select
                                                when file_time_min.i >= last_min then do
                                                    target = "YES"
                                                end
                                                when file_time_min.i < last_min then do
                                                    target = "NO"
                                                end
                                            end
                                        end
                                        when file_time_hour.i < last_hour then do
                                            target = "NO"
                                        end
                                    end
                                end
                                when file_date_day.i < last_day then do
                                    target = "NO"
                                end
                            end
                        end
                        when file_date_month.i < last_month then do
                            target = "NO"
                        end
                    end
                end
                when file_date_year.i < last_year then do
                    target = "NO"
                end
            end
        end
        else if MODE.selected = "COPY" then do

            cf_dt_local  = VRDir(ftp_local_directory"\"file_name.i,  "DT")
            cf_dt_remote = VRDir(ftp_remote_directory"\"file_name.i, "DT")

            parse var cf_dt_local  cf_l_mm "/" cf_l_dd "/" cf_l_yy cf_l_hour ":" cf_l_min ":" cf_l_sec
            cf_dt_local = cf_l_yy""cf_l_mm""cf_l_dd""cf_l_hour""cf_l_min""cf_l_sec
            parse var cf_dt_remote cf_r_mm "/" cf_r_dd "/" cf_r_yy cf_r_hour ":" cf_r_min ":" cf_r_sec
            cf_dt_remote = cf_r_yy""cf_r_mm""cf_r_dd""cf_r_hour""cf_r_min""cf_r_sec

            if cf_dt_remote <> "" then do
                /* Updtaed */
                if cf_dt_local > cf_dt_remote then target = "YES"
                /* No Update */
                else if cf_dt_local = cf_dt_remote then target = "NO"
                /* Destination file is newer than target... funny... */
                else if cf_dt_local < cf_dt_remote then target = "NO"
            end
            else do
                rc = VRFileExists(ftp_remote_directory"\"file_name.i)

                if rc = 0 then do
                    copy_when_no_target.0 = copy_when_no_target.0 + 1
                    target = "YES"
                end
                else do
                    nop
                end
            end

        end


/*
    3.99 beta 15でのCOPY Mode Logic仕様変更に伴い、下記の機能は統合上記Routineに統合 (3.99 beta 15, 03.Aug.2003)

        /* COPY MODEの時、相手側に同じファイルがない場合、変更が無くてもコピーするようにする (20.Jul.2003) */
        if CopyWhenNoTargetFile = "Yes" then do
            if (MODE.selected = "COPY") & (target = "NO") then do
                rc = VRFileExists(ftp_remote_directory"\"file_name.i)

                if rc = 0 then do
                    copy_when_no_target.0 = copy_when_no_target.0 + 1
                    target = "YES"
                end
                else do
                    nop
                end
            end
        end
*/

        /* CHECK IGNORE FILE EXTENSION */
        /* ここでIgnore File Extensionをチェックするように仕様変更 (23.Jun.98 2.01.d)*/
        if target = "YES" then do
            if IgnoreFileExtensionMode = "Enabled" then do
                ife = "Upload"
                tgt_lastpos = lastpos(".", file_name.i)
                tgt_ext = right(file_name.i, length(file_name.i) - tgt_lastpos)

                do m = 1 to IgnoreFileExtension.0
                    ign_lastpos = lastpos(".", IgnoreFileExtension.m)
                    ign_ext = right(IgnoreFileExtension.m, length(IgnoreFileExtension.m) - ign_lastpos)

                    if translate(tgt_ext) = translate(ign_ext) then do
                        ife = "Ignore"
                        ife_ext = IgnoreFileExtension.m
                        ignore_file_num = ignore_file_num + 1
                        ignore_file_name.ignore_file_num = file_name.i" (Ignore extension ["ife_ext"])"
                        ignore_file_name.0 = ignore_file_num
                        leave
                    end
                end
                if ife = "Ignore" then target = "NO"
            end
        end
        /* --- */

        if target = "YES" then do
            j = j + 1
            target_file_name.j = file_name.i
            target_file_size.j = file_size.i
        end
    end
    target_file_name.0 = j

/* Change Upper to Lower機能はここでは取りこぼしがあるため、 StartUploadへ移動 (Version 3.29 beta 1, 08.Jul.2001) */
/*
    if ChangeUpperToLower = "Yes" then do
        do i = 1 to target_file_name.0

            target_file_name.i = ChangeFileNameUpperToLower(target_file_name.i)
/*
            target_file_name.i = translate(target_file_name.i, "a", "A")
            target_file_name.i = translate(target_file_name.i, "b", "B")
            target_file_name.i = translate(target_file_name.i, "c", "C")
            target_file_name.i = translate(target_file_name.i, "d", "D")
            target_file_name.i = translate(target_file_name.i, "e", "E")
            target_file_name.i = translate(target_file_name.i, "f", "F")
            target_file_name.i = translate(target_file_name.i, "g", "G")
            target_file_name.i = translate(target_file_name.i, "h", "H")
            target_file_name.i = translate(target_file_name.i, "i", "I")
            target_file_name.i = translate(target_file_name.i, "j", "J")
            target_file_name.i = translate(target_file_name.i, "k", "K")
            target_file_name.i = translate(target_file_name.i, "l", "L")
            target_file_name.i = translate(target_file_name.i, "m", "M")
            target_file_name.i = translate(target_file_name.i, "n", "N")
            target_file_name.i = translate(target_file_name.i, "o", "O")
            target_file_name.i = translate(target_file_name.i, "p", "P")
            target_file_name.i = translate(target_file_name.i, "q", "Q")
            target_file_name.i = translate(target_file_name.i, "r", "R")
            target_file_name.i = translate(target_file_name.i, "s", "S")
            target_file_name.i = translate(target_file_name.i, "t", "T")
            target_file_name.i = translate(target_file_name.i, "u", "U")
            target_file_name.i = translate(target_file_name.i, "v", "V")
            target_file_name.i = translate(target_file_name.i, "w", "W")
            target_file_name.i = translate(target_file_name.i, "x", "X")
            target_file_name.i = translate(target_file_name.i, "y", "Y")
            target_file_name.i = translate(target_file_name.i, "z", "Z")
*/
        end
    end
*/

return

/*:VRX         SelectAllTakeoutTargetFiles
*/
SelectAllTakeoutTargetFiles:
if debug_mode = 1 then say "SelectAllTakeoutTargetFiles"

    ok = VRMethod( "LB_UploadedFileList", "GetStringList", "tko_temp." )

    call SetStatus ">Selecting all files..."

    call SetTakeoutSliderColor
    do i = 1 to tko_temp.0
        tko_select_all.i = i

        percentile = (i * 100) % tko_temp.0
        if percentile // 10 = 0 then do
            ok = VRSet( "SL_TakeoutStatus", "Percentile", percentile )
        end
    end
    tko_select_all.0 = tko_temp.0

    ok = VRMethod( "LB_UploadedFileList", "SetSelectedList", tko_select_all. )
    
return

/*:VRX         SetAsciiMode
*/
SetAsciiMode:
if debug_mode = 1 then say "SetAsciiMode"

    if TransferMode = "AUTO" then do
        ok = VRSet( "DT_ASCII_Mode_List",      "Enabled", 1 )
        ok = VRSet( "Combo_AsciiModeList",     "Enabled", 1 )
        ok = VRSet( "PB_AddAsciiExtension",    "Enabled", 1 )
        ok = VRSet( "PB_DeleteAsciiExtension", "Enabled", 1 )
        ok = VRSet( "PB_ClearAsciiExtension",  "Enabled", 1 )
    end
    else do
        ok = VRSet( "DT_ASCII_Mode_List",      "Enabled", 0 )
        ok = VRSet( "Combo_AsciiModeList",     "Enabled", 0 )
        ok = VRSet( "PB_AddAsciiExtension",    "Enabled", 0 )
        ok = VRSet( "PB_DeleteAsciiExtension", "Enabled", 0 )
        ok = VRSet( "PB_ClearAsciiExtension",  "Enabled", 0 )
    end

return

/*:VRX         SetCMNSCaption
*/
SetCMNSCaption:
if debug_mode = 1 then say "SetCMNSCaption"

    /* Target String */
    selectedtext = ""
    if CMNS_Target = "Site Name" then do
        selectedtext = VRGet( "EF_NewSiteName", "SelectedText" )
    end
    else if CMNS_Target = "Address" then do
        selectedtext = VRGet( "EF_NewAddress", "SelectedText" )
    end
    else if CMNS_Target = "User ID" then do
        selectedtext = VRGet( "EF_NewUserID", "SelectedText" )
    end
    else if CMNS_Target = "Password" then do
        selectedtext = VRGet( "EF_NewPassword", "SelectedText" )
    end
    else if CMNS_Target = "Account" then do
        selectedtext = VRGet( "EF_NewAccount", "SelectedText" )
    end
    else if CMNS_Target = "Local Dir" then do
        selectedtext = VRGet( "EF_NewLocalDir", "SelectedText" )
    end
    else if CMNS_Target = "Remote Dir" then do
        selectedtext = VRGet( "EF_NewRemoteDir", "SelectedText" )
    end
    else if CMNS_Target = "Close Cmd" then do
        selectedtext = VRGet( "EF_NewCloseCommand", "SelectedText" )
    end

    if strip(selectedtext) <> "" then do
        ok = VRSet( "CM_NS_Copy", "Enabled", 1 )
        ok = VRSet( "CM_NS_Copy", "Caption", "Copy > '"selectedtext"'" )
    end
    else do
        ok = VRSet( "CM_NS_Copy", "Enabled", 0 )
        ok = VRSet( "CM_NS_Copy", "Caption", "Copy" )
    end


    /* Clip Board */
    string = VRMethod( "Application", "GetClipboard" )

    if strip(string) <> "" then do
        ok = VRSet( "CM_NS_Paste", "Enabled", 1 )
        ok = VRSet( "CM_NS_Paste", "Caption", "Paste > '"string"'" )
    end
    else do
        ok = VRSet( "CM_NS_Paste", "Enabled", 0 )
        ok = VRSet( "CM_NS_Paste", "Caption", "Paste" )
    end

return

/*:VRX         SetDataFileFullPathName
*/
SetDataFileFullPathName:
if debug_mode = 1 then say "SetDataFileFullPathName"

    if Logging = "Enabled"  then do
        if LogDirectory <> "" then do
            tko_file = JasmineDirectory"\"LogDirectory"\Takeout.lst"
            rff_file = JasmineDirectory"\"LogDirectory"\Failed.lst"
            ddf_file = JasmineDirectory"\"LogDirectory"\Disabled.lst"
            auf_file = JasmineDirectory"\"LogDirectory"\Always.lst"
            tr_file  = JasmineDirectory"\"LogDirectory"\TimerRun.lst"
        end
        else if LogDirectory = "" then do
            tko_file = JasmineDirectory"\Takeout.lst"
            rff_file = JasmineDirectory"\Failed.lst"
            ddf_file = JasmineDirectory"\Disabled.lst"
            auf_file = JasmineDirectory"\Always.lst"
            tr_file  = JasmineDirectory"\TimerRun.lst"
        end
    end
    else if Logging = "Disabled" then do
        tko_file = "Takeout.lst"
        rff_file = "Failed.lst"
        ddf_file = "Disabled.lst"
        auf_file = "Always.lst"
        tr_file  = "TimerRun.lst"
    end

return

/*:VRX         SetDateTime
*/
SetDateTime:
if debug_mode = 1 then say "SetDateTime"

    now_date = date()
    parse var now_date now_day now_month now_year
    select
        when translate(now_month) = "JAN" then now_month = "01"
        when translate(now_month) = "FEB" then now_month = "02"
        when translate(now_month) = "MAR" then now_month = "03"
        when translate(now_month) = "APR" then now_month = "04"
        when translate(now_month) = "MAY" then now_month = "05"
        when translate(now_month) = "JUN" then now_month = "06"
        when translate(now_month) = "JUL" then now_month = "07"
        when translate(now_month) = "AUG" then now_month = "08"
        when translate(now_month) = "SEP" then now_month = "09"
        when translate(now_month) = "OCT" then now_month = "10"
        when translate(now_month) = "NOV" then now_month = "11"
        when translate(now_month) = "DEC" then now_month = "12"
        otherwise say now_month
    end

    now_day = right(now_day, 2, "0")

    now_time = left(time(), 5)
    parse var now_time now_hour ":" now_min

return

/*:VRX         SetDateTimeGB
*/
SetDateTimeGB: 
if debug_mode = 1 then say "SetDateTimeGB"

    parse arg arg1

    if arg1 = "FTP" then do
        ok = VRSet( "GB_Last_Upload_Date_and_Time", "Visible", 1 )

        ok = VRSet( "GB_Last_Upload_Date_and_Time", "Enabled", 1 )
        ok = VRSet( "DT_Year",                      "Enabled", 1 )
        ok = VRSet( "DT_Month",                     "Enabled", 1 )
        ok = VRSet( "DT_Day",                       "Enabled", 1 )
        ok = VRSet( "DT_Hour",                      "Enabled", 1 )
        ok = VRSet( "DT_Min",                       "Enabled", 1 )
        ok = VRSet( "SPIN_LastYear",                "Enabled", 1 )
        ok = VRSet( "SPIN_LastMonth",               "Enabled", 1 )
        ok = VRSet( "SPIN_LastDay",                 "Enabled", 1 )
        ok = VRSet( "SPIN_LastHour",                "Enabled", 1 )
        ok = VRSet( "SPIN_LastMin",                 "Enabled", 1 )
        ok = VRSet( "PB_ResetLastYear",             "Enabled", 1 )
        ok = VRSet( "PB_ResetLastMonth",            "Enabled", 1 )
        ok = VRSet( "PB_ResetLastDay",              "Enabled", 1 )
        ok = VRSet( "PB_ResetLastTime",             "Enabled", 1 )
    end
    else if arg1 = "COPY" then do
        ok = VRSet( "GB_Last_Upload_Date_and_Time", "Visible", 0 )

        ok = VRSet( "GB_Last_Upload_Date_and_Time", "Enabled", 0 )
        ok = VRSet( "DT_Year",                      "Enabled", 0 )
        ok = VRSet( "DT_Month",                     "Enabled", 0 )
        ok = VRSet( "DT_Day",                       "Enabled", 0 )
        ok = VRSet( "DT_Hour",                      "Enabled", 0 )
        ok = VRSet( "DT_Min",                       "Enabled", 0 )
        ok = VRSet( "SPIN_LastYear",                "Enabled", 0 )
        ok = VRSet( "SPIN_LastMonth",               "Enabled", 0 )
        ok = VRSet( "SPIN_LastDay",                 "Enabled", 0 )
        ok = VRSet( "SPIN_LastHour",                "Enabled", 0 )
        ok = VRSet( "SPIN_LastMin",                 "Enabled", 0 )
        ok = VRSet( "PB_ResetLastYear",             "Enabled", 0 )
        ok = VRSet( "PB_ResetLastMonth",            "Enabled", 0 )
        ok = VRSet( "PB_ResetLastDay",              "Enabled", 0 )
        ok = VRSet( "PB_ResetLastTime",             "Enabled", 0 )
    end

return 0

/*:VRX         SetDefault
*/
SetDefault:
if debug_mode = 1 then say "SetDefault"

    /*
    font = "9.WarpSans"
    StatusFont = "9.WarpSans"
    */
    Font = "<NONE>"
    StatusFont = "<NONE>"

    PreferencePosX = 0
    PreferencePosY = 0

    ok = VRSet( "EF_Mode", "Value", "" )

    ok = VRSet( "DDCB_FtpSiteList", "Value", "" )
    ok = VRSet( "EF_FtpAddress",    "Value", "" )

    ok = VRSet( "EF_UserID",   "Value", "" )

    ok = VRSet( "EF_LocalDirectory",  "Value", "" )
    ok = VRSet( "EF_RemoteDirectory", "Value", "" )

    ok = VRSet( "EF_Account", "Value", "" )

    last_year      = "1968"
    last_month     = "02"
    last_day       = "27"
    last_time_hour = "18"
    last_time_min  = "15"

    ok = VRSet( "SPIN_LastYear",  "Value", last_year )
    ok = VRSet( "SPIN_LastMonth", "Value", last_month )
    ok = VRSet( "SPIN_LastDay",   "Value", last_day )
    ok = VRSet( "SPIN_LastHour",  "Value", last_time_hour )
    ok = VRSet( "SPIN_LastMin",   "Value", last_time_min )

    ok = VRSet( "EF_RemoteDirectory", "Width", 1999 )
    ok = VRSet( "PB_OpenRemoteFolder", "Visible", 0 )

    Logging = "Enabled"
    ok = VRSet( "CB_Log", "Set", 1 )
    LogDirectory = "log"
    LoggingType = "Daily"
    ok = VRSet( "RB_Log_Daily", "Set", 1 )

    call SetLogging Logging

    TransferMode = "BINARY"

    UploadFileCheck = "Yes"

    Option = "OFF"

    mmos2 = "Enabled"

    SoundDirectory = JasmineDirectory

    Sound = "ON"
    ok = VRSet( "IPB_SoundSwitch", "Enabled", 1 )
    ok = VRSet( "IPB_SoundSwitch", "PicturePath", "#134" )

    SoundVolume = 80

    SoundStart             = "Enabled"
    SoundNoFile            = "Enabled"
    SoundLogonSuccessfully = "Enabled"
    SoundLogonFailed       = "Enabled"
    SoundSaveLog           = "Enabled"
    SoundEnd               = "Enabled"

    SoundStartRes             = "Start.wav"
    SoundNoFileRes            = "NoFile.wav"
    SoundLogonSuccessfullyRes = "Logon_s.wav"
    SoundLogonFailedRes       = "Logon_f.wav"
    SoundSaveLogRes           = "SaveLog.wav"
    SoundEndRes               = "End.wav"

    RibbonColor.0 = 5
    RibbonColor.1 = "7FFFD4"
    RibbonColor.2 = "8A2BE2"
    RibbonColor.3 = "FF1493"
    RibbonColor.4 = "1E90FF"
    RibbonColor.5 = "FF69B4"

    RibbonColor_all = RibbonColor.1
    do i = 2 to RibbonColor.0
        RibbonColor_all = RibbonColor_all","RibbonColor.i
    end
    r_red   = X2D(left(RibbonColor.1, 2))
    r_green = X2D(right(left(RibbonColor.1, 4), 2))
    r_blue  = X2D(right(RibbonColor.1, 2))

    RibbonColor_dec = "("r_red","r_green","r_blue")"

    ok = VRSet( "SL_UploadStatus", "RibbonColor", RibbonColor_dec )

    LogonRetry = "Disabled"
    LogonRetryNum = 5
    do i = 1 to LogonRetryNum + 1
        lrn.i = i - 1
    end
    lrn.0 = LogonRetryNum + 1
    LogonRetryNumSelected = 5

    ChangeUpperToLower = "No"

    IgnoreFileExtensionMode = "Disabled"
    IgnoreFileExtensionList = "*.tmp,*.bak"
    ShowIgnoredFileList = "Enabled"

    AsciiExtensionList   = "*.htm,*.html,*.txt"

    CloseCommandMode = "Disabled"

    StatusTransferMode  = "Enabled"
    StatusFileSize      = "Enabled"
    StatusUploadSummary = "Enabled"

    color_success_hex   = "CCFFCC"
    color_attention_hex = "FFFF99"
    color_failed_hex    = "FFCCFF"
    ColorSet = color_success_hex","color_attention_hex","color_failed_hex

    /* Registry */
    register_number = "Unregistered"

    /* Takeout */
/*  Takeout = "Disabled" */
    Takeout = "Enabled"
    ok = VRSet( "PB_Takeout", "Visible", 1 )
    tko_host.0 = 0
    tko_host_name.0 = 0

    AutoTakeout = "Enabled"


    JasmineMode = "Upload" /* Upload or Takeout */

    SilentStatusIndication = "Disabled"

    /* Sequential Run Mode*/
    SequentialRunMode = "Disabled"
    DefaultRunMode = "Selected Site Only"
    call SetSequentialRunModeParams SequentialRunMode

    /* Jasmine Language */
    LanguageMode = "Default"
    JasmineLanguage = "Default" /* Default English */

    /* Upload Failed File at Next Time (Retry Failed File) */
    RetryFailedFile = "Disabled"
    failed_file.0 = 0

    /* Manage Upload Files */
    ManageUploadFiles = "Enabled"

    /* Default Disabled File */
    DefaultDisabledFile = "Enabled"
    default_disabled.0 = 0

    /* Always Upload File */
    AlwaysUploadFile = "Disabled"
    always_upload.0 = 0

    /* Preference WindowがEnableかDisableかを判断するParameter */
    PreferenceWindow = "Disabled"

    /* Compulsory Upload File */
    CompulsoryUploadFile = "Disabled"
    compulsory_upload_file.0      = 0
    compulsory_upload_file_size.0 = 0

    RememberUploadStatus = "Disabled"
    DisableSoundDuringSequentialRunning = "No"

    /* HTML Key Exchange Function */
    HtmlKeywordExchangeFunction = "Disabled"
    HkeFileSizeStyle = "Byte" /* Bit, Byte, KB */
    HkeDateStyle     = "mmddyyyy"
    HkeDateSeparator = "Slash"
    HkeDateMonthIndication = "Number"
    HkeTimeStyle     = "24Hour"

    /* Failed File List */
    FailedFileListWindow = "Disabled"

    /* Timer Run */
    TRSITENAME = 1
    TRMODE = 2
    TRPARAM = 3   

    TRi = 0

    TimerRun = "Disabled"
    ok = VRSet( "PB_TimerRun_Setup", "Enabled", 0 )
    ok = VRSet( "IPB_TimerRun", "PicturePath", "#152" )
    ok = VRSet( "TM_TimerRun_Timer", "Visible", 0 )

    TimerCount = 0 
    ok = VRSet( "TM_TimerRun_Timer", "Caption", "00:00:00" )

    CopyShadowToStartupFolder = "No"
    StartMinimized = "No"

    RunAtStartup = "Disabled"

    ShowTimerCounter = "No"
    ok = VRSet( "TM_TimerRun_Timer", "Visible", 0 )

    TimerRunStatus.1 = "[Timer Run Status]"
    TimerRunStatus.0 = 1
    TimerRunCounter = 1

    /* COPY MODEの時、ローカル・ファイルが相手側にない場合、修正が無くてもコピーする機能 */
    CopyWhenNoTargetFile = "No"

    /* Auto Takeout */
    AutoTakeout = "Disabled"
    ManualTakeout = "Enabled"

return

/*:VRX         SetDisabledUploadFiles
*/
SetDisabledUploadFiles:
if debug_mode = 1 then say "SetDisabledUploadFiles"

    /* Set Previsouly Disabled File */
    do i = 1 to target_file_name.0
/* ---? 削除してもよいか確認中... 17.Sep.2001 <- 消しても問題なさそう (17.Sep.2001)
        if RememberUploadStatus = "Enabled" then do
*/
            upload_status.i = "Enabled"

            do j = 1 to FtpSiteName.0
                if ftp_host_name = FtpSiteName.j then do
                    host_num = j

                    flug = 0
                    do k = 1 to default_disabled.host_num.0
                        if right(default_disabled.host_num.k, 2) = "\*" then do
                            check_disabled_dir = left(default_disabled.host_num.k, length(default_disabled.host_num.k) - 2)

                            if check_disabled_dir = left(target_file_name.i, length(check_disabled_dir)) then do
                                flug = 1
                                leave
                            end
                        end
                        else do
                            if default_disabled.host_num.k = target_file_name.i then do
                                flug = 1
                                leave
                            end
                        end
                    end

                    /* Default Disabled File DataにListupされているFileをDisabledにする */
                    if flug = 1 then do
                        upload_status.i = "Disabled"
                    end

                    leave
                end
            end
/* ---? 削除してもよいか確認中... 17.Sep.2001 <- 消しても問題なさそう (17.Sep.2001)
        end
        else do /* DefaultDisabledFile = "Enabled" */
            upload_status.i = "Enabled"
        end
*/
    end

/*
    upload = "Enabled"
*/

return

/*:VRX         SetFont
*/
SetFont:
if debug_mode = 1 then say "SetFont"

    /* FTP Site Area */
    ok = VRSet( "DT_FtpSite",         "Font", font )
    ok = VRSet( "DDCB_FtpSiteList",   "Font", font )
    ok = VRSet( "DT_Mode",            "Font", font )
    ok = VRSet( "EF_Mode",            "Font", font )
    ok = VRSet( "DT_Address",         "Font", font )
    ok = VRSet( "EF_FtpAddress",      "Font", font )
    ok = VRSet( "DT_UserID",          "Font", font )
    ok = VRSet( "EF_UserID",          "Font", font )
    ok = VRSet( "DT_Account",         "Font", font )
    ok = VRSet( "EF_Account",         "Font", font )
    ok = VRSet( "DT_LocalDir",        "Font", font )
    ok = VRSet( "EF_LocalDirectory",  "Font", font )
    ok = VRSet( "DT_RemoteDir",       "Font", font )
    ok = VRSet( "EF_RemoteDirectory", "Font", font )
    ok = VRSet( "PB_NewSite",         "Font", font )
    ok = VRSet( "PB_DeleteSite",      "Font", font )
    ok = VRSet( "PB_EditSite",        "Font", font )
    ok = VRSet( "DT_CloseCommand",    "Font", font )
    ok = VRSet( "EF_CloseCommand",    "Font", font )

    ok = VRSet( "PB_OpenLocalFolder",  "Font", font )
    ok = VRSet( "PB_OpenRemoteFolder", "Font", font )

    /* Status */
    ok = VRSet( "LB_Status", "Font", StatusFont)

    /* Last Upload Date */
    ok = VRSet( "GB_Last_Upload_Date_and_Time", "Font", font )
    ok = VRSet( "DT_Year",                      "Font", font )
    ok = VRSet( "PB_ResetLastYear",             "Font", font )
    ok = VRSet( "SPIN_LastYear",                "Font", font )
    ok = VRSet( "DT_Month",                     "Font", font )
    ok = VRSet( "SPIN_LastMonth",               "Font", font )
    ok = VRSet( "PB_ResetLastMonth",            "Font", font )
    ok = VRSet( "DT_Day",                       "Font", font )
    ok = VRSet( "SPIN_LastDay",                 "Font", font )
    ok = VRSet( "PB_ResetLastDay",              "Font", font )
    ok = VRSet( "DT_Hour",                      "Font", font )
    ok = VRSet( "SPIN_LastHour",                "Font", font )
    ok = VRSet( "DT_Min",                       "Font", font )
    ok = VRSet( "SPIN_LastMin",                 "Font", font )
    ok = VRSet( "PB_ResetLastTime",             "Font", font )

    /* Log */
    ok = VRSet( "GB_Log",          "Font", font )
    ok = VRSet( "CB_Log",          "Font", font )
    ok = VRSet( "RB_Log_Daily",    "Font", font )
    ok = VRSet( "RB_Log_Monthly",  "Font", font )
    ok = VRSet( "PB_ViewLogFile",  "Font", Font )

    /* Button */
    ok = VRSet( "PB_Run",         "Font", font )
    ok = VRSet( "PB_Preferences", "Font", font )
    ok = VRSet( "PB_Exit",        "Font", font )
    ok = VRSet( "PB_Takeout",     "Font", Font )

    ok = VRSet( "DT_RunMode",          "Font", Font )
    ok = VRSet( "SPIN_JasmineRunMode", "Font", Font )

    ok = VRSet( "PB_SetExcludedFiles",     "Font", Font )
    ok = VRSet( "PB_SetAlwaysUploadFiles", "Font", Font )

    /* Sound */
    ok = VRSet( "GB_Sound",    "Font", font )
    ok = VRSet( "PB_SetSound", "Font", font )

    ok = VRSet( "DT_UploadStatus", "Font", font )

    /* Compulsory Upload File */
    ok = VRSet( "CB_CompulsoryUploadFile", "Font", Font )

    /* Timer Run */
    ok = VRSet( "GB_TimerRun",       "Font", font )
    ok = VRSet( "PB_TimerRun_Setup", "Font", font )
    ok = VRSet( "TM_TimerRun_Timer", "Font", Font )


return

/*:VRX         SetLanguage
*/
SetLanguage:
if debug_mode = 1 then say "SetLanguage"

    if (LanguageMode = "Custom") & (JasmineLanguage <> "Default") then do
        parse arg key

        select
            when key = "L_MainWindow"                 then window_key_name = L_MainWindow
            when key = "L_CheckFile"                  then window_key_name = L_CheckFile
            when key = "L_NewSiteName"                then window_key_name = L_NewSiteName
            when key = "L_SetSound"                   then window_key_name = L_SetSound
            when key = "L_Preference"                 then window_key_name = L_Preference
            when key = "L_Registry"                   then window_key_name = L_Registry
            when key = "L_Takeout"                    then window_key_name = L_Takeout
            when key = "L_AlertDeleteSite"            then window_key_name = L_AlertDeleteSite
            when key = "L_SelectCompulsoryUploadFile" then window_key_name = L_SelectCompulsoryUploadFile
            when key = "L_LogViewer"                  then window_key_name = L_LogViewer
            when key = "L_SetDisabledFiles"           then window_key_name = L_SetDisabledFiles
            when key = "L_SetAlwaysUploadFiles"       then window_key_name = L_SetAlwaysUploadFiles
            when key = "L_FailedFileList"             then window_key_name = L_FailedFileList
            when key = "L_TimerRun"                   then window_key_name = L_TimerRun
            otherwise
                window_key_name = ""
        end

        if window_key_name <> "" then do
            do i = 1 to language.window_key_name.object_name.0
                if language.window_key_name.object_caption.i <> "" then do

                    /* 変動するラベルのテキストを個別に設定 */
                    value = VRGet( "EF_Mode", "Value" )
                    if language.window_key_name.object_name.i = "DT_LocalDir" then do
                        if value = "FTP"  then ok = VRSet( "DT_LocalDir", "Caption", Text_LocalDir_FTP  )
                        if value = "COPY" then ok = VRSet( "DT_LocalDir", "Caption", Text_LocalDir_COPY )
                    end
                    else if language.window_key_name.object_name.i = "DT_RemoteDir" then do
                        if value = "FTP"  then ok = VRSet( "DT_RemoteDir", "Caption", Text_RemoteDir_FTP  )
                        if value = "COPY" then ok = VRSet( "DT_RemoteDir", "Caption", Text_RemoteDir_COPY )
                    end

                    else if language.window_key_name.object_name.i = "DT_NewLocalDir" then do
                        if value = "FTP"  then ok = VRSet( "DT_NewLocalDir", "Caption", Text_LocalDir_FTP  )
                        if value = "COPY" then ok = VRSet( "DT_NewLocalDir", "Caption", Text_LocalDir_COPY )
                    end
                    else if language.window_key_name.object_name.i = "DT_NewRemoteDir" then do
                        if value = "FTP"  then ok = VRSet( "DT_NewRemoteDir", "Caption", Text_RemoteDir_FTP  )
                        if value = "COPY" then ok = VRSet( "DT_NewRemoteDir", "Caption", Text_RemoteDir_COPY )
                    end

                    else if language.window_key_name.object_name.i = "PB_OpenRegistry" then do
                        if Registry = "Registered" then ok = VRSet( "PB_OpenRegistry", "Caption", Text_OpenRegistry_Registered )
                        else                            ok = VRSet( "PB_OpenRegistry", "Caption", Text_OpenRegistry_NotRegistered )
                    end

                    else do
                        ok = VRSet( language.window_key_name.object_name.i, "Caption", language.window_key_name.object_caption.i )
                    end
                end
            end
        end
    end

return

/*:VRX         SetLogging
*/
SetLogging:
if debug_mode = 1 then say "SetLogging"

    parse arg _Logging

    if _Logging = "Enabled" then do
        ok = VRSet( "RB_Log_Daily",    "Enabled", 1 )
        ok = VRSet( "RB_Log_Monthly",  "Enabled", 1 )
    end
    else if _Logging = "Disabled" then do
        ok = VRSet( "RB_Log_Daily",    "Enabled", 0 )
        ok = VRSet( "RB_Log_Monthly",  "Enabled", 0 )
    end

return

/*:VRX         SetModeSet
*/
SetModeSet:
if debug_mode = 1 then say "SetModeSet"

    if CopyMode = "FTP" then do
        ok = VRSet( "EF_NewAddress",  "Enabled", 1 )
        ok = VRSet( "EF_NewUserID",   "Enabled", 1 )
        ok = VRSet( "EF_NewPassword", "Enabled", 1 )
        ok = VRSet( "EF_NewAccount",  "Enabled", 1 )

        ok = VRSet( "EF_NewAddress",  "BackColor", "White" )
        ok = VRSet( "EF_NewUserID",   "BackColor", "White" )
        ok = VRSet( "EF_NewPassword", "BackColor", "White" )
        ok = VRSet( "EF_NewAccount",  "BackColor", "White" )

        if LanguageMode = "Default" then do
            ok = VRSet( "DT_NewLocalDir",  "Caption", "Local Dir" )
            ok = VRSet( "DT_NewRemoteDir", "Caption", "Remote Dir" )
        end
        else do
            ok = VRSet( "DT_NewLocalDir",  "Caption", Text_LocalDir_FTP )
            ok = VRSet( "DT_NewRemoteDir", "Caption", Text_RemoteDir_FTP )
        end
    end
    else if CopyMode = "COPY" then do
        ok = VRSet( "EF_NewAddress",  "Enabled", 0 )
        ok = VRSet( "EF_NewUserID",   "Enabled", 0 )
        ok = VRSet( "EF_NewPassword", "Enabled", 0 )
        ok = VRSet( "EF_NewAccount",  "Enabled", 0 )

        ok = VRSet( "EF_NewAddress",  "BackColor", "PaleGray" )
        ok = VRSet( "EF_NewUserID",   "BackColor", "PaleGray" )
        ok = VRSet( "EF_NewPassword", "BackColor", "PaleGray" )
        ok = VRSet( "EF_NewAccount",  "BackColor", "PaleGray" )

        if LanguageMode = "Default" then do
            ok = VRSet( "DT_NewLocalDir",  "Caption", "Source" )
            ok = VRSet( "DT_NewRemoteDir", "Caption", "Destination" )
        end
        else do
            ok = VRSet( "DT_NewLocalDir",  "Caption", Text_LocalDir_COPY )
            ok = VRSet( "DT_NewRemoteDir", "Caption", Text_RemoteDir_COPY )
        end
    end

return

/*:VRX         SetPreferenceData
*/
SetPreferenceData:
if debug_mode = 1 then say "SetPreferenceData"

    /* Set Logon Retry */
    if LogonRetry = "Enabled" then do
        ok = VRSet( "CB_LogonRetry", "Set", 1 )
        ok = VRSet( "SPIN_LogonRetry", "Visible", 1 )
    end
    else do
        ok = VRSet( "CB_LogonRetry", "Set", 0 )
        ok = VRSet( "SPIN_LogonRetry", "Visible", 0 )
    end

    /* Set Logon Retry Maximum Number */
    do i = 1 to LogonRetryNum + 1
        lrn.i = i - 1
    end
    lrn.0 = LogonRetryNum + 1
    ok = VRMethod( "SPIN_LogonRetry", "SetStringList", "lrn." )

    /* Set Logon Retry Number */
    ok = VRSet( "SPIN_LogonRetry", "Value", LogonRetryNumSelected )

    /* Manage Upload Files */
    if ManageUploadFiles = "Enabled" then do
        ok = VRSet( "CB_ManageUploadFiles", "Set", 1 )

        ok = VRSet( "CB_UploadFileCheck",      "Enabled", 1 )
        ok = VRSet( "CB_RememberUploadStatus", "Enabled", 1 )
    end
    else do
        ok = VRSet( "CB_UploadFileCheck",      "Enabled", 0 )
        ok = VRSet( "CB_RememberUploadStatus", "Enabled", 0 )
    end

    /* Upload File Check */
    if UploadFileCheck = "Yes" then do
        ok = VRSet( "CB_UploadFileCheck", "Set", 1 )

        if ManageUploadFiles = "Enabled" then do
            ok = VRSet( "CB_RememberUploadStatus", "Enabled", 1 ) 
        end
        else do
            ok = VRSet( "CB_RememberUploadStatus", "Enabled", 0 ) 
        end
    end
    else if UploadFileCheck = "No" then do
        ok = VRSet( "CB_UploadFileCheck", "Set", 0 )
        ok = VRSet( "CB_RememberUploadStatus", "Enabled", 0 ) 
    end

    /* Remember Upload Status */
    if RememberUploadStatus = "Enabled" then do
        ok = VRSet( "CB_RememberUploadStatus", "Set", 1 )
    end
    else if RememberUploadStatus = "Disabled" then do
        ok = VRSet( "CB_RememberUploadStatus", "Set", 0 )
    end

    /* Set File Transfer Mode */
    ok = VRSet( "Combo_AsciiModeList", "BackColor", "PaleGray" )
    ok = VRSet( "Combo_AsciiModeList", "ForeColor", "DarkGray" )
    if TransferMode = "ASCII" then do
        ok = VRSet( "RB_Upload_ASCII", "Set", 1 )
    end
    else if TransferMode = "BINARY" then do
        ok = VRSet( "RB_Upload_Binary", "Set", 1 )
    end
    else if TransferMode = "AUTO" then do
        ok = VRSet( "RB_Upload_Auto", "Set", 1 )
        ok = VRSet( "Combo_AsciiModeList", "BackColor", "<default>" )
        ok = VRSet( "Combo_AsciiModeList", "ForeColor", "<default>" )
    end

    /* Check Upplor to Lower Mode */
    if ChangeUpperToLower = "Yes" then do
        ok = VRSet( "CB_ChangeUpperToLower", "Set", 1 )
    end

/*
    /* Exit Command Mode */
    if CloseCommandMode = "Enabled" then do
        ok = VRSet( "CB_CloseCommand", "Set", 1 )
    end
    else if CloseCommandMode = "Disabled" then do
        ok = VRSet( "CB_CloseCommand", "Set", 0 )
    end
*/

    /* Status : Transfer Mode */
    if StatusTransferMode = "Enabled" then do
        ok = VRSet( "CB_StatusTransferMode", "Set", 1 )
    end
    else if StatusTransferMode = "Disabled" then do
        ok = VRSet( "CB_StatusTransferMode", "Set", 0 )
    end

    call SetAsciiMode
    ok = VRMethod( "Combo_AsciiModeList", "AddStringList", "AsciiExtension.",  )

    /* Status : File Size */
    if StatusFileSize = "Enabled" then do
        ok = VRSet( "CB_StatusFileSize", "Set", 1 )
    end
    else if StatusFileSize = "Disabled" then do
        ok = VRSet( "CB_StatusFileSize", "Set", 0 )
    end

    /* Status : Upload Summary */
    if StatusUploadSummary = "Enabled" then do
        ok = VRSet( "CB_StatusUploadSummary", "Set", 1 )
    end
    else if StatusUploadSummary = "Disabled" then do
        ok = VRSet( "CB_StatusUploadSummary", "Set", 0 )
    end

    /* Ignore File Extension */
    if IgnoreFileExtensionMode = "Enabled" then do
        ok = VRSet( "CB_IgnoreFileExtension", "Set", 1 )
        ok = VRSet( "Combo_IgnoreFileExtensionList", "Enabled", 1 )
        ok = VRSet( "PB_AddIgnoreFileExtension",     "Enabled", 1 )
        ok = VRSet( "PB_DeleteIgnoreFileExtension",  "Enabled", 1 )
        ok = VRSet( "PB_ClearIgnoreFileExtension",   "Enabled", 1 )

        ok = VRSet( "Combo_IgnoreFileExtensionList", "BackColor", "<default>" )
        ok = VRSet( "Combo_IgnoreFileExtensionList", "ForeColor", "<default>" )

        ok = VRSet( "CB_ShowIgnoredFileList", "Enabled", 1 )
    end
    else if IgnoreFileExtensionMode = "Disabled" then do
        ok = VRSet( "CB_IgnoreFileExtension", "Set", 0 )
        ok = VRSet( "Combo_IgnoreFileExtensionList", "Enabled", 0 )
        ok = VRSet( "PB_AddIgnoreFileExtension",     "Enabled", 0 )
        ok = VRSet( "PB_DeleteIgnoreFileExtension",  "Enabled", 0 )
        ok = VRSet( "PB_ClearIgnoreFileExtension",   "Enabled", 0 )

        ok = VRSet( "Combo_IgnoreFileExtensionList", "BackColor", "PaleGray" )
        ok = VRSet( "Combo_IgnoreFileExtensionList", "ForeColor", "DarkGray" )

        ok = VRSet( "CB_ShowIgnoredFileList", "Enabled", 0 )
    end

    if ShowIgnoredFileList = "Enabled" then do
        ok = VRSet( "CB_ShowIgnoredFileList", "Set", 1 )
    end
    else if ShowIgnoredFileList = "Disabled" then do
        ok = VRSet( "CB_ShowIgnoredFileList", "Set", 0 )
    end

    ok = VRMethod( "Combo_IgnoreFileExtensionList", "AddStringList", "IgnoreFileExtension.",  )

/*
    /* Takeout */
    if Takeout = "Enabled" then do
        ok = VRSet( "CB_Takeout", "Set", 1 )
    end
    else if Takeout = "Disabled" then do
        ok = VRSet( "CB_Takeout", "Set", 0 )
    end
*/

    /* Retry Failed File */
    if RetryFailedFile = "Enabled" then do
        ok = VRSet( "CB_RetryFailedFile", "Set", 1 )
    end
    else if RetryFailedFile = "Disabled" then do
        ok = VRSet( "CB_RetryFailedFile", "Set", 0 )
    end

    /* Font */
    ok = VRSet( "EF_WindowFont", "Font", font )
    ok = VRSet( "EF_WindowFont", "Value", font )

    ok = VRSet( "EF_StatusFont", "Font", StatusFont )
    ok = VRSet( "EF_StatusFont", "Value", StatusFont )

    /* Silent Status Indication */
    if SilentStatusIndication = "Enabled" then do
        ok = VRSet( "CB_SilentStatusIndication", "Set", 1 )
    end
    else if SilentStatusIndication = "Disabled" then do
        ok = VRSet( "CB_SilentStatusIndication", "Set", 0 )
    end

    if Registry = "Registered" then do
        ok = VRSet( "PB_OpenRegistry", "Caption", "About" )
    end

    /* Sequential Run Mode */
    ok = VRMethod( "SPIN_DefaultJasmineRunMode", "SetStringList", "jrm." )
    ok = VRSet( "SPIN_DefaultJasmineRunMode", "Value", DefaultRunMode )

    if SequentialRunMode = "Enabled" then do
        ok = VRSet( "CB_SequentialRunMode", "Set", 1 )
        ok = VRSet( "SPIN_DefaultJasmineRunMode", "Enabled", 1 )
    end
    else if SequentialRunMode = "Disabled" then do
        ok = VRSet( "CB_SequentialRunMode", "Set", 0 )
        ok = VRSet( "SPIN_DefaultJasmineRunMode", "Enabled", 0 )
    end

    call SetSequentialRunModeParams SequentialRunMode

    if DisableSoundDuringSequentialRunning = "Yes" then do
        ok = VRSet( "CB_DisableSoundDuringSequentialRunning", "Set", 1 )
    end
    else do
        ok = VRSet( "CB_DisableSoundDuringSequentialRunning", "Set", 0 )
    end


/*
    /* Copy when there are no target file (COPY MODE) */
    if CopyWhenNoTargetFile = "Yes" then do
        ok = VRSet( "CB_CopyWhenNoTarget", "Set", 1 )
    end
    else do
        ok = VRSet( "CB_CopyWhenNoTarget", "Set", 0 )
    end
*/

    /* HTML Keyword Exchane Function */
    if HtmlKeywordExchangeFunction = "Enabled" then do
        ok = VRSet( "CB_HtmlKeywordExchange", "Set", 1 )

        ok = VRSet( "GB_HKE_FileSize",           "Enabled", 1 )
        ok = VRSet( "RB_HKE_FileSize_Bit",       "Enabled", 1 )
        ok = VRSet( "RB_HKE_FileSize_Byte",      "Enabled", 1 )
        ok = VRSet( "RB_HKE_FileSize_KByte",     "Enabled", 1 )
        ok = VRSet( "GB_HKE_DateStyle",          "Enabled", 1 )
        ok = VRSet( "RB_HKE_DateStyle_yyyymmdd", "Enabled", 1 )
        ok = VRSet( "RB_HKE_DateStyle_ddmmyyyy", "Enabled", 1 )
        ok = VRSet( "RB_HKE_DateStyle_mmddyyyy", "Enabled", 1 )

        ok = VRSet( "GB_HKE_DateSeparator",                "Enabled", 1 )
        ok = VRSet( "RB_HKE_DateSeparator_Slash",          "Enabled", 1 )
        ok = VRSet( "RB_HKE_DateSeparator_Dot",            "Enabled", 1 )
        ok = VRSet( "GB_HKE_MonthIndication",              "Enabled", 1 )
        ok = VRSet( "RB_HKE_DateMonthIndication_Number",   "Enabled", 1 )
        ok = VRSet( "RB_HKE_DateMonthIndication_Alphabet", "Enabled", 1 )
    end
    else do
        ok = VRSet( "CB_HtmlKeywordExchange", "Set", 0 )

        ok = VRSet( "GB_HKE_FileSize",           "Enabled", 0 )
        ok = VRSet( "RB_HKE_FileSize_Bit",       "Enabled", 0 )
        ok = VRSet( "RB_HKE_FileSize_Byte",      "Enabled", 0 )
        ok = VRSet( "RB_HKE_FileSize_KByte",     "Enabled", 0 )
        ok = VRSet( "GB_HKE_DateStyle",          "Enabled", 0 )
        ok = VRSet( "RB_HKE_DateStyle_yyyymmdd", "Enabled", 0 )
        ok = VRSet( "RB_HKE_DateStyle_ddmmyyyy", "Enabled", 0 )
        ok = VRSet( "RB_HKE_DateStyle_mmddyyyy", "Enabled", 0 )

        ok = VRSet( "GB_HKE_DateSeparator",                "Enabled", 0 )
        ok = VRSet( "RB_HKE_DateSeparator_Slash",          "Enabled", 0 )
        ok = VRSet( "RB_HKE_DateSeparator_Dot",            "Enabled", 0 )
        ok = VRSet( "GB_HKE_MonthIndication",              "Enabled", 0 )
        ok = VRSet( "RB_HKE_DateMonthIndication_Number",   "Enabled", 0 )
        ok = VRSet( "RB_HKE_DateMonthIndication_Alphabet", "Enabled", 0 )
    end

    if      HkeFileSizeStyle = "Bit"   then ok = VRSet( "RB_HKE_FileSize_Bit",   "Set", 1 )
    else if HkeFileSizeStyle = "Byte"  then ok = VRSet( "RB_HKE_FileSize_Byte",  "Set", 1 )
    else if HkeFileSizeStyle = "KByte" then ok = VRSet( "RB_HKE_FileSize_KByte", "Set", 1 )

    if      HkeDateStyle = "yyyymmdd" then ok = VRSet( "RB_HKE_DateStyle_yyyymmdd", "Set", 1 )
    else if HkeDateStyle = "mmddyyyy" then ok = VRSet( "RB_HKE_DateStyle_mmddyyyy", "Set", 1 )
    else if HkeDateStyle = "ddmmyyyy" then ok = VRSet( "RB_HKE_DateStyle_ddmmyyyy", "Set", 1 )

    if      HkeDateSeparator = "Slash" then ok = VRSet( "RB_HKE_DateSeparator_Slash", "Set", 1 )
    else if HkeDateSeparator = "Dot"   then ok = VRSet( "RB_HKE_DateSeparator_Dot",   "Set", 1 )

    if      HkeDateMonthIndication = "Number"   then ok = VRSet( "RB_HKE_DateMonthIndication_Number",   "Set", 1 )
    else if HkeDateMonthIndication = "Alphabet" then ok = VRSet( "RB_HKE_DateMonthIndication_Alphabet", "Set", 1 )

    /* Set Language */
    /*
    select
        when LanguageMode = "Default" then do
            ok = VRSet( "RB_Language_Default", "Set", 1 )
            ok = VRSet( "PB_SetLanguage", "Enabled", 0 )
        end
        when LanguageMode = "Custom" then do
            ok = VRSet( "RB_Language_Custom", "Set", 1 )
            ok = VRSet( "PB_SetLanguage", "Enabled", 1 )
        end
    end
    */
    if LanguageMode = "Custom" then do
        ok = VRSet( "RB_Language_Custom", "Set", 1 )
        ok = VRSet( "PB_SetLanguage", "Enabled", 1 )
    end
    else do /* LanguageMode = "Default" */
        ok = VRSet( "RB_Language_Default", "Set", 1 )
        ok = VRSet( "PB_SetLanguage", "Enabled", 0 )
    end


    window_key_name = "L_Preference"
    call SetLanguage window_key_name

    if LanguageMode = "Custom" then do
        ok = VRSet( "PB_SetLanguage", "Caption", LanguageName )
    end
    else do
        ok = VRSet( "PB_SetLanguage", "Caption", "" )
    end

    /* 各種Data Fileが存在するか確認 */
    rc = SysFileTree( ddf_file, "f.", "f" )
    if f.0 = 0 then do
        ok = VRSet( "PB_ClearUploadStatusFile", "Enabled", 0 )
    end

    rc = SysFileTree( rff_file, "f.", "f" )


    if AutoTakeout = "Enabled" then do
         ok = VRSet( "CB_AutoTakeout", "Set", 1 )
    end
    else do
         ok = VRSet( "CB_AutoTakeout", "Set", 0 )
    end


return

/*:VRX         SetPreferenceFont
*/
SetPreferenceFont:
if debug_mode = 1 then say "SetPreferenceFont"

    /* Transfer Mode */
    ok = VRSet( "GB_Transfer_Mode", "Font", font )
    ok = VRSet( "RB_Upload_ASCII",  "Font", font )
    ok = VRSet( "RB_Upload_Binary", "Font", font )
    ok = VRSet( "RB_Upload_Auto",   "Font", font )

    ok = VRSet( "DT_ASCII_Mode_List",      "Font", font )
    ok = VRSet( "Combo_AsciiModeList",     "Font", font )
    ok = VRSet( "PB_AddAsciiExtension",    "Font", font )
    ok = VRSet( "PB_DeleteAsciiExtension", "Font", font )
    ok = VRSet( "PB_ClearAsciiExtension",  "Font", font )

    /* Upload Option */
    ok = VRSet( "GB_Upload_Option",         "Font", font )
    ok = VRSet( "CB_LogonRetry",            "Font", font )
    ok = VRSet( "SPIN_LogonRetry",          "Font", font )
    ok = VRSet( "CB_ManageUploadFiles",     "Font", Font )
    ok = VRSet( "CB_UploadFileCheck",       "Font", font )
    ok = VRSet( "CB_RememberUploadStatus",  "Font", Font )
    ok = VRSet( "PB_ClearUploadStatusFile", "Font", Font )

    ok = VRSet( "CB_ChangeUpperToLower", "Font", font )

    ok = VRSet( "CB_IgnoreFileExtension",        "Font", font )
    ok = VRSet( "Combo_IgnoreFileExtensionList", "Font", font )
    ok = VRSet( "PB_AddIgnoreFileExtension",     "Font", font )
    ok = VRSet( "PB_DeleteIgnoreFileExtension",  "Font", font )
    ok = VRSet( "PB_ClearIgnoreFileExtension",   "Font", font )

    ok = VRSet( "CB_ShowIgnoredFileList", "Font", font )

/*
    /* Exit Command Mode */         
    ok = VRSet( "GB_CloseCommand",   "Font", font )
    ok = VRSet( "CB_CloseCommand",   "Font", font )
*/

    ok = VRSet( "PB_OpenRegistry",   "Font", font )

    ok = VRSet( "PB_ExitPreference", "Font", font )

    /* Upload File Status */
    ok = VRSet( "GB_Upload_File_Status",  "Font", font )
    ok = VRSet( "CB_StatusTransferMode",  "Font", font )
    ok = VRSet( "CB_StatusFileSize",      "Font", font )
    ok = VRSet( "CB_StatusUploadSummary", "Font", font )

    /* Font */
    ok = VRSet( "GB_Font",          "Font", Font )
    ok = VRSet( "PB_SetWindowFont", "Font", font )
    ok = VRSet( "DT_WindowFont",    "Font", font )
    ok = VRSet( "EF_WindowFont",    "Font", font )
    ok = VRSet( "PB_SetStatusFont", "Font", font )
    ok = VRSet( "DT_StatusFont",    "Font", font )
    ok = VRSet( "EF_StatusFont",    "Font", StatusFont )

/*
    /* Copy when no target */
    ok = VRSet( "GB_CopyOption", "Font", Font )
    ok = VRSet( "CB_CopyWhenNoTarget", "Font", Font )
*/

/*
    /* Takeout */
    ok = VRSet( "GB_Takeout", "Font", Font )
    ok = VRSet( "CB_Takeout", "Font", Font )
*/
    ok = VRSet( "CB_AutoTakeout", "Font", Font )

    /* Retry Failed File */
    ok = VRSet( "CB_RetryFailedFile", "Font", Font )
    ok = VRSet( "PB_ViewFailedFile",  "Font", Font )

    /* Silent Status Indication */
    ok = VRSet( "CB_SilentStatusIndication", "Font", Font )

    /* Sequential Run Mode */
    ok = VRSet( "GB_SequencialRunMode",                   "Font", Font )
    ok = VRSet( "CB_SequentialRunMode",                   "Font", Font )
    ok = VRSet( "SPIN_DefaultJasmineRunMode",             "Font", Font )
    ok = VRSet( "CB_DisableSoundDuringSequentialRunning", "Font", Font )

    /* Language */
    ok = VRSet( "GB_SetLanguage",      "Font", Font )
    ok = VRSet( "RB_Language_Default", "Font", Font )
    ok = VRSet( "RB_Language_Custom",  "Font", Font )
    ok = VRSet( "PB_SetLanguage",      "Font", Font )

    /* HTML Keyword Exchange */
    ok = VRSet( "GB_HTML_Keyword_Exchange_Function", "Font", Font )
    ok = VRSet( "CB_HtmlKeywordExchange",            "Font", Font )
    ok = VRSet( "GB_HKE_FileSize",                   "Font", Font )
    ok = VRSet( "RB_HKE_FileSize_Bit",               "Font", Font )
    ok = VRSet( "RB_HKE_FileSize_Byte",              "Font", Font )
    ok = VRSet( "RB_HKE_FileSize_KByte",             "Font", Font )
    ok = VRSet( "GB_HKE_DateStyle",                  "Font", Font )
    ok = VRSet( "RB_HKE_DateStyle_yyyymmdd",         "Font", Font )
    ok = VRSet( "RB_HKE_DateStyle_ddmmyyyy",         "Font", Font )
    ok = VRSet( "RB_HKE_DateStyle_mmddyyyy",         "Font", Font )

return

/*:VRX         SetSequentialRunModeParams
*/
SetSequentialRunModeParams:
if debug_mode = 1 then say "SetSequentialRunModeParams"

    parse arg _SequentialRunMode

    if _SequentialRunMode = "Enabled" then do
        ok = VRSet( "DT_RunMode", "Visible", 1 )
        ok = VRSet( "SPIN_JasmineRunMode", "Visible", 1 )

        ok = VRSet( "SPIN_JasmineRunMode", "Value", DefaultRunMode )

        ok = VRSet( "PB_Takeout", "Left", 2891 )

        if PreferenceWindow = "Enabled" then do
            ok = VRSet( "DT_Default",                             "Enabled", 1 )
            ok = VRSet( "SPIN_DefaultJasmineRunMode",             "Enabled", 1 )
            ok = VRSet( "CB_DisableSoundDuringSequentialRunning", "Enabled", 1 )

            ok = VRSet( "SPIN_DefaultJasmineRunMode", "BackColor", "<default>" )
        end
    end
    else if _SequentialRunMode = "Disabled" then do
        ok = VRSet( "DT_RunMode", "Visible", 0 )
        ok = VRSet( "SPIN_JasmineRunMode", "Visible", 0 )

        ok = VRSet( "PB_Takeout", "Left", 1205 )

        if PreferenceWindow = "Enabled" then do
            ok = VRSet( "DT_Default",                             "Enabled", 0 )
            ok = VRSet( "SPIN_DefaultJasmineRunMode",             "Enabled", 0 )
            ok = VRSet( "CB_DisableSoundDuringSequentialRunning", "Enabled", 0 )

            ok = VRSet( "SPIN_DefaultJasmineRunMode", "BackColor", "PaleGray" )
        end
    end

return

/*:VRX         SetStatus
*/
SetStatus:
/* if debug_mode = 1 then say "SetStatus" */

    status = arg(1)

    select
        when JasmineMode = "Upload" then do
            position = VRMethod( "LB_Status", "AddString", status,  )
            count = VRGet( "LB_Status", "Count" )

            if SilentStatusIndication = "Disabled" then do
                ok = VRSet( "LB_Status", "Selected", count  )
            end
        end
        when JasmineMode = "Takeout" then do
            position = VRMethod( "LB_TakeoutStatus", "AddString", status,  )
            count = VRGet( "LB_TakeoutStatus", "Count" )

            if SilentStatusIndication = "Disabled" then do
                ok = VRSet( "LB_TakeoutStatus", "Selected", count  )
            end
        end
        otherwise
            nop
    end

return

/*:VRX         SetTakeoutButton
*/
SetTakeoutButton:
if debug_mode = 1 then say "SetTakeoutButton"

    TakeoutButtonSet = "Enabled"

    parse arg TakeoutButtonSet

    select
        when TakeoutButtonSet = "Enabled" then do
            ok = VRSet( "PB_OpenTakeoutLocalFolder",                  "Enabled", 1 )
            ok = VRSet( "PB_SelectFilesNotAvailableAtLocalDirectory", "Enabled", 1 )
            ok = VRSet( "PB_RunTakeout",                              "Enabled", 1 )
            if ftp_transfer_mode = "FTP" then do
                ok = VRSet( "PB_ClearSelectedData",                   "Enabled", 1 )
                ok = VRSet( "PB_SearchLogFiles",                      "Enabled", 1 )
            end
            ok = VRSet( "PB_ExitTakeout",                             "Enabled", 1 )
        end
        when TakeoutButtonSet = "Disabled" then do
            ok = VRSet( "PB_OpenTakeoutLocalFolder",                  "Enabled", 0 )
            ok = VRSet( "PB_SelectFilesNotAvailableAtLocalDirectory", "Enabled", 0 )
            ok = VRSet( "PB_RunTakeout",                              "Enabled", 0 )
            if ftp_transfer_mode = "FTP" then do
                ok = VRSet( "PB_ClearSelectedData",                   "Enabled", 0 )
                ok = VRSet( "PB_SearchLogFiles",                      "Enabled", 0 )
            end
            ok = VRSet( "PB_ExitTakeout",                             "Enabled", 0 )
        end
    end

    ok = VRMethod( "LB_UploadedFileList", "GetSelectedStringList", "TakeoutItem." )

    if TakeoutItem.0 = 0 then do
        ok = VRSet( "PB_RunTakeout",        "Enabled", 0 )
        ok = VRSet( "PB_ClearSelectedData", "Enabled", 0 )
    end

return

/*:VRX         SetTakeoutSliderColor
*/
SetTakeoutSliderColor:
if debug_mode = 1 then say "SetTakeoutSliderColor"

    i = random(1, RibbonColor.0)
    RibbonColor_temp = RibbonColor.i

    r_red   = X2D(left(RibbonColor_temp, 2))
    r_green = X2D(right(left(RibbonColor_temp, 4), 2))
    r_blue  = X2D(right(RibbonColor_temp, 2))

    RibbonColor_dec = "("r_red","r_green","r_blue")"

    ok = VRSet( "SL_TakeoutStatus", "RibbonColor", RibbonColor_dec )
    ok = VRSet( "SL_TakeoutStatus", "Percentile", 100 )

return

/*:VRX         SetTakeoutWindowData
*/
SetTakeoutWindowData:
if debug_mode = 1 then say "SetTakeoutWindowData"

    ok = VRSet( "LB_Status", "BackColor", "<default>" )

    call SetStatus "[Takeout]"

    ok = VRSet( "PB_RunTakeout", "Enabled", 0 )
    ok = VRSet( "PB_ClearSelectedData", "Enabled", 0 )
    ok = VRSet( "IRB_CancelTakeout", "PicturePath", "#142" )

    /* Takeout default value is disabled */
    rc = SysFileTree(JasmineDirectory"\"LogDirectory"\Takeout.lst", "chktko.", "f")

    if chktko.0 = 0 then do
        call SetStatus ">No takeout data file found. Create file..."
        call CreateTakeoutData
    end

    selected = VRGet( "DDCB_FtpSiteList", "Selected" )
    ok = VRSet( "EF_TakeoutHostName", "Value", tko_host_name.selected )

    ftp_transfer_mode = VRGet( "EF_Mode", "Value" )
    ok = VRSet( "EF_TakeoutMode",     "Value", ftp_transfer_mode )

    if ftp_transfer_mode = "FTP" then do
        ok = VRSet( "PB_OpenTakeoutLocalFolder", "Caption", "Open Local Folder" )
    end
    else if ftp_transfer_mode = "COPY" then do
        ok = VRSet( "PB_OpenTakeoutLocalFolder", "Caption", "Open Source Folder" )
    end

    if ftp_transfer_mode = "FTP" then do
        ok = VRMethod( "LB_UploadedFileList", "AddStringList", tko_host.selected.,  )

        ok = VRSet( "PB_SearchLogFiles", "Enabled", 1 )
    end
    else if ftp_transfer_mode = "COPY" then do
        ftp_local_directory  = LocalDirectory.selected
        ftp_remote_directory = RemoteDirectory.selected

        ok = SysFileTree(ftp_remote_directory"\*", "file_name.",OFS)

        ok = VRMethod( "LB_UploadedFileList", "AddStringList", "file_name.",  )

        ok = VRSet( "PB_SearchLogFiles", "Enabled", 0 )
    end

return


/*:VRX         SetTakeoutWindowFont
*/
SetTakeoutWindowFont:
if debug_mode = 1 then say "SetTakeoutWindowFont"


    ok = VRSet( "DT_TakeoutSiteName",                         "Font", Font )
    ok = VRSet( "EF_TakeoutHostName",                         "Font", Font )
    ok = VRSet( "EF_TakeoutMode",                             "Font", Font )
                                                             
    ok = VRSet( "PB_SearchLogFiles",                          "Font", Font )
    ok = VRSet( "PB_RunTakeout",                              "Font", Font )
    ok = VRSet( "PB_RunTakeoutAutomatically",                 "Font", Font )
    ok = VRSet( "PB_ExitTakeout",                             "Font", Font )
                                                             
    ok = VRSet( "PB_ClearSelectedData",                       "Font", Font )
    ok = VRSet( "PB_SelectFilesNotAvailableAtLocalDirectory", "Font", Font )

    ok = VRSet( "LB_UploadedFileList",                        "Font", StatusFont )
    ok = VRSet( "LB_TakeoutStatus",                           "Font", StatusFont )
                                                             
    ok = VRSet( "PB_OpenTakeoutLocalFolder",                  "Font", font )

return

/*:VRX         SetTimerRunData
*/
SetTimerRunData: 
if debug_mode = 1 then say "SetTimerRunData"

    TimerRunMode.TRSITENAME.TRi = VRGet( "DDCB_TimerRun_SiteList", "Value" )

    TimerRunMode.TRMODE.TRi = TR_Mode

    if TR_Mode = "Run Regularly" then do
        value1 = VRGet( "SPIN_TimerRun_RunRegularly_Interval",     "Value" )
        value2 = VRGet( "SPIN_TimerRun_RunRegularly_IntervalUnit", "Value" )

        TimerRunMode.TRPARAM.TRi = "Every "value1" "value2    
    end
    else if TR_Mode = "Run Fixed Time" then do
        value1 = VRGet( "SPIN_TimerRun_FixedTime_HH",    "Value" )
        value2 = VRGet( "SPIN_TimerRun_RunFixedTime_MM", "Value" )

        TimerRunMode.TRPARAM.TRi = value1":"value2
    end

    ok = VRMethod( "LB_TimerRun_List", "Delete", TRi )
    position = VRMethod( "LB_TimerRun_List", "AddString", TimerRunMode.TRSITENAME.TRi", "TimerRunMode.TRMODE.TRi", "TimerRunMode.TRPARAM.TRi, TRi )

    ok = VRSet( "PB_TimerRun_Change", "Enabled", 0 )
    ok = VRSet( "PB_TimerRun_Delete", "Enabled", 0 )

return

/*:VRX         SetUploadSliderColor
*/
SetUploadSliderColor:
if debug_mode = 1 then say "SetUploadSliderColor"

    i = random(1, RibbonColor.0)
    RibbonColor_temp = RibbonColor.i

    r_red   = X2D(left(RibbonColor_temp, 2))
    r_green = X2D(right(left(RibbonColor_temp, 4), 2))
    r_blue  = X2D(right(RibbonColor_temp, 2))

    RibbonColor_dec = "("r_red","r_green","r_blue")"

    ok = VRSet( "SL_UploadStatus", "RibbonColor", RibbonColor_dec )

return

/*:VRX         ShowTakeoutStatusSummary
*/
ShowTakeoutStatusSummary:
if debug_mode = 1 then say "ShowTakeoutStatusSummary"

    call SetStatus "[Takeout Summary]"

    /* 1.Takeout Status Summary */
    call SetStatus ">Total file number : "TakeoutItem.0

    call SetStatus ">Success file number : "takeout_success_num

    if takeout_fail_num > 0 then do
        call SetStatus ">Failed file number : "takeout_fail_num
    end

    if lead_time <> 0 then do
        call SetStatus ">Lead time : "left(lead_time, length(lead_time) - 4)"sec."
    end

    /* 2.Show messge when current operation is canceled by user. */
    if takeout_cancel = "Yes" then do
        call SetStatus ">CANCELED BY USER."
    end

return

/*:VRX         ShowUploadStatusSummary
*/
ShowUploadStatusSummary:
if debug_mode = 1 then say "ShowUploadStatusSummary"

    call SetStatus "[Upload Summary]"

    ok = VRSet( "DT_UploadStatus", "Caption", "SUMMARY" )

    /* 1.Date and Time */
    if ftp_transfer_mode = "FTP" then do
        call SetStatus ">Uploaded date and time : "now_month"/"now_day"/"now_year LastTime.selected
    end
    else if ftp_transfer_mode = "COPY" then do
        call SetStatus ">Copied date and time : "now_month"/"now_day"/"now_year LastTime.selected
    end

    /* 2.Upload/Copy Status Summary */
    call SetStatus ">Total file number : "target_file_name.0 + ignore_file_num

    if ftp_transfer_mode = "FTP" then do
        call SetStatus ">Uploaded file number : "upload_file_num
    end
    else if ftp_transfer_mode = "COPY" then do
        call SetStatus ">Copied file number : "upload_file_num
    end

    if ignore_file_num > 0 then do
        call SetStatus ">Ignored file number : "ignore_file_num
    end

    if cancel_file_num > 0 then do
        call SetStatus ">Canceled file number : "cancel_file_num
    end

    if failed_file_num > 0 then do
        call SetStatus ">Failed file number : "failed_file_num
    end

    /* 3.Total Summary */
    if total_file_size <  1024 then t = ((total_file_size * 100) % 1024) / 100
    if total_file_size >= 1024 then t = total_file_size % 1024
    call SetStatus ">Total file size : "total_file_size"byte ("t"KB)"

    call SetStatus ">Lead time : "left(lead_time, length(lead_time) - 4)"sec."

    /* Average is only shown then FTP transfer mode is "FTP" */
    if ftp_transfer_mode = "FTP" then do
        if total_upload_time > 0 then do
            call SetStatus ">Pure upload time : "left(total_upload_time, length(total_upload_time) - 4)"sec."

            upload_speed = (total_file_size % 1024) / total_upload_time
            upload_speed = (upload_speed * 100 % 1 ) / 100

            call SetStatus ">Average transfer speed : "format(upload_speed,,2,2)"KB/sec."
        end
        else if total_upload_time = 0 then do
            call SetStatus ">Pure upload time : -"

            call SetStatus ">Average transfer speed : -"
        end
    end

    /* 4.Show messge when current operation is canceled by user. */
    if upload_cancel = "Yes" then do
        call SetStatus ">CANCELED BY USER. DATE AND TIME ARE RETURNED TO LAST VALUE"
    end

return

/*:VRX         SPIN_AUF_Hours_Change
*/
SPIN_AUF_Hours_Change:
if debug_mode = 1 then say "SPIN_AUF_Hours_Change"

    always_upload_style.selected = VRGet( "SPIN_AUF_Hours", "Value" )
/*
    call UpdateAlwaysUploadFileData "NO MESSAGE"
*/
return

/*:VRX         SPIN_DefaultJasmineRunMode_Change
*/
SPIN_DefaultJasmineRunMode_Change:
if debug_mode = 1 then say "SPIN_DefaultJasmineRunMode_Change"

    DefaultRunMode = VRGet( "SPIN_DefaultJasmineRunMode", "Value" )
    ok = VRSet( "SPIN_JasmineRunMode", "Value", DefaultRunMode )

    if DefaultRunMode = "Selected Site Only" then do
        ok = VRSet( "CB_CompulsoryUploadFile", "Enabled", 1 )
    end
    else do
        ok = VRSet( "CB_CompulsoryUploadFile", "Enabled", 0 )
    end


return

/*:VRX         SPIN_JasmineRunMode_Change
*/
SPIN_JasmineRunMode_Change:
if debug_mode = 1 then say "SPIN_JasmineRunMode_Change"

    set = VRGet( "CB_CompulsoryUploadFile", "Set" )

    value = VRGet( "SPIN_JasmineRunMode", "Value" )
    if value = "Selected Site Only" then do
        ok = VRSet( "CB_CompulsoryUploadFile", "Enabled", 1 )
    end
    else do
        ok = VRSet( "CB_CompulsoryUploadFile", "Enabled", 0 )

        CompulsoryUploadFile = "Disabled"
        ok = VRSet( "CB_CompulsoryUploadFile", "Set", 0 )
    end

return

/*:VRX         SPIN_LogonRetry_Change
*/
SPIN_LogonRetry_Change:
if debug_mode = 1 then say "SPIN_LogonRetry_Change"

    LogonRetryNumSelected = VRGet( "SPIN_LogonRetry", "Value" )

    call WriteInitialFile

return

/*:VRX         StartTakeout
*/
StartTakeout: 
if debug_mode = 1 then say "StartTakeout"

    if FtpSiteName.0 > 0 then do
        if AutoTakeout = "Disabled" then do
            ok = VRMethod( "LB_Status", "Clear" )
        end

        ok = VRSet( "LB_Status", "BackColor", "<default>" )

        ok = VRLoadSecondary( "SW_Takeout", "W" )
    end

return

/*:VRX         StartUpload
*/
StartUpload:
if debug_mode = 1 then say "StartUpload"

    if RunMode <> "Selected Site Only" then do
        ok = VRMethod( "LB_Status", "Clear" )
        call SetStatus "#Jasmine Sequential Run Mode"
        call SetStatus ">RUN MODE:"RunMode
    end

    ok = VRSet( "PB_Run", "Visible", 0 )
    /* Visible Cancel Button */
    ok = VRSet( "IRB_CancelUpload", "Visible", 1 )

    ok = VRSet( "SL_UploadStatus", "Percentile", 0 )

    /* Set Ribbon Color */
    call SetUploadSliderColor

    ok = VRSet( "LB_Status",       "BackColor", "White" )
    ok = VRSet( "DT_UploadStatus", "BackColor", "White" )
    ok = VRSet( "DT_UploadStatus", "Caption", "" )
    call SetStatus "* * * Jasmine ver."JasmineVersion" * * *"

    if mmos2 = "Enabled" & SoundStart = "Enabled" then do
        status_sound = "START"
        call PlaySound
    end

    call SetDateTime

    ftp_host_name = VRGet( "DDCB_FtpSiteList", "SelectedString" )
    do i = 1 to FtpSiteName.0
/*        if ftp_host_name = FtpSiteName.0 then do */ /* 12.Apr.2001修正 */
        if ftp_host_name = FtpSiteName.i then do
            selected = i
        end
    end
    ftp_address = FtpSiteAddress.selected

    ftp_transfer_mode = Mode.selected
    if ftp_transfer_mode = "FTP" then do
        call SetStatus ">Host name : "ftp_host_name" ("ftp_address")"
    end
    else if ftp_transfer_mode = "COPY" then do
        call SetStatus ">Destination name : "ftp_host_name" (LOCAL COPY)"
    end

    ftp_userid           = UserID.selected
    ftp_password         = Password.selected
    ftp_local_directory  = LocalDirectory.selected
    ftp_remote_directory = RemoteDirectory.selected
    ftp_account          = Account.selected
    ftp_open_command     = OpenCommand.selected
    ftp_close_command    = CloseCommand.selected

    /* 日付時刻は直接Windowから取得する */
    last_year  = VRGet( "SPIN_LastYear",  "Value" )
    last_month = right(VRGet( "SPIN_LastMonth", "Value" ), 2, "0")
    last_day   = right(VRGet( "SPIN_LastDay",   "Value" ), 2, "0")
    last_hour  = right(VRGet( "SPIN_LastHour",  "Value" ), 2, "0")
    last_min   = right(VRGet( "SPIN_LastMin",   "Value" ), 2, "0")

    call SetStatus ">Last date : "last_month"/"last_day"/"last_year last_hour":"last_min

    call SetStatus ">Load files..."

    call SearchTargetFiles

    ok = VRMethod( "LB_Status", "Delete", count )

    if ftp_transfer_mode = "FTP" then do
        call SetStatus ">Normaly upload file number : "target_file_name.0
    end
    else if ftp_transfer_mode = "COPY" then do
        call SetStatus ">Normaly copy file number : "target_file_name.0
    end


    /* RetryFailedFile = Enabled時、ここで前回Uploadに失敗したファイルを加える */
    if RetryFailedFile = "Enabled" then do
        rc = SysFileTree( rff_file, "rff.", "sf" )
        if rff.0 > 0 then do
            do i = 1 to FtpSiteName.0
                if ftp_host_name = FtpSiteName.i then do
                    host_num = i

                    if failed_file.host_num.0 > 0 then do
                        k = target_file_name.0
                        do i = 1 to failed_file.host_num.0
                            flug = 0
                            do j = 1 to target_file_name.0
                                if failed_file.host_num.i = target_file_name.j then do
                                    flug = 1
                                    leave
                                end
                            end

                            if flug = 0 then do
                                k = k + 1

                                rc = SysFileTree( ftp_local_directory"\"failed_file.host_num.i, "ff.", "sf" )
                                if ff.0 > 0 then do
                                    parse var ff.1 . . fs . .

                                    target_file_size.k = fs
                                    target_file_name.k = failed_file.host_num.i
                                end
                            end
                        end
                        target_file_name.0 = k

                        call SetStatus ">Retry failed file number : "failed_file.host_num.0

                        /* 2.76 beta 2 でこのleaveを追加。問題はないと思うが... */
                        leave
                    end
                end
            end
        end
    end

    upload = "Enabled"

    /* Compulsory Upload File */ /* PB_Run_Clickからこちらに移動 3.32 beta 6 12.Oct.2002 */
    if CompulsoryUploadFile = "Enabled" then do
        ok = VRLoadSecondary( "SW_SelectCompulsoryUploadFile", "w" )
    end


    if (target_file_name.0 > 0) & (upload = "Enabled") then do
        if ManageUploadFiles = "Enabled" & UploadFileCheck = "Yes" then do
            ok = VRLoadSecondary( "SW_CheckFile", "W" )

            /* Add this call at 09.Sep.2001 */
            call SetDisabledUploadFiles
        end
        else if ManageUploadFiles = "Enabled" & UploadFileCheck = "No" then do
            call SetDisabledUploadFiles
        end
        else do
            do i = 1 to target_file_name.0
                upload_status.i = "Enabled"
            end
            upload = "Enabled"
        end
    end
    else do
        upload = "No files"
    end


    /* Add compulsory upload files to target file list */

    if compulsory_upload_file.0 > 0 then do
        call AddCompulsoryUploadFile "Compulsory"

        if upload = "No files" then upload = "Enabled"
    end


    /* Add Always Upload Files - Compulsory Upload File機能を流用 */
    /*
     *  必ずCompulsory Upload Fileの後に実行させること。
     *  先に実行させるとCompulsory Upload Fileのデータが正しくLoadされないため。
     *
     */

    if always_upload.selected.0 > 0 then do
        auf_cur_datetime = format((date("B") - 1) * 24 * 60 + time("M"),,0,0)

        if (auf_cur_datetime - always_upload_data.selected) >= always_upload_style.selected * 60 then do
            always_upload_data.selected = auf_cur_datetime

            do i = 1 to always_upload.selected.0
                compulsory_upload_file.i = always_upload.selected.i

                rc = SysFileTree(ftp_local_directory"\"always_upload.selected.i, "aufn.", "F")
                parse var aufn.1 . . dummy . . .

                compulsory_upload_file_size.i = dummy
            end
            compulsory_upload_file.0 = always_upload.selected.0
            compulsory_upload_file_size.0 = always_upload.selected.0

            call AddCompulsoryUploadFile "Always"
            if upload = "No files" then upload = "Enabled"

            call UpdateAlwaysUploadFileData
        end
    end


    if ftp_transfer_mode = "FTP" then do
        call SetStatus ">Total upload file number : "target_file_name.0
    end
    if ftp_transfer_mode = "COPY" then do
        call SetStatus ">Total copy file number : "target_file_name.0
    end

    if ignore_file_num > 0 then do
        call SetStatus ">Ignored file number : "ignore_file_num
    end

    /* CopyMode : FTP/Copy */
    selected = VRGet( "DDCB_FtpSiteList", "Selected" )
    if upload = "Enabled" then do
        if target_file_name.0 > 0  then do
            if ftp_transfer_mode = "FTP" then do
                call RunFtpMode selected
            end
            else if ftp_transfer_mode = "COPY" then do
                call RunCopyMode selected
            end
        end
        else do
            call SetStatus ">No files..."

            if mmos2 = "Enabled" & SoundNoFile = "Enabled" then do
                status_sound = "NO_FILES"
                call PlaySound
            end
        end
    end
    else if upload = "Disabled" then do
        if ftp_transfer_mode = "FTP" then do
            call SetStatus ">Cancel upload..."
        end
        if ftp_transfer_mode = "COPY" then do
            call SetStatus ">Cancel copy..."
        end
    end

    /* Auto Takeout (add 24.Oct.2004) */
    if AutoTakeout = "Enabled" then do
        ManualTakeout = "Disabled"
        call StartTakeout
    end

    if Logging = "Enabled" then do
        if LoggingType = "Daily" then do
            log_file = now_year""now_month""now_day".log"
        end
        if LoggingType = "Monthly" then do
            log_file = now_year""now_month".log"
        end

        call SetStatus "[Save Log File]"

        call SetStatus ">Save log file : "LogDirectory"\"log_file
        ok = VRSet( "DT_UploadStatus", "Caption", "SAVE LOG" )

        if mmos2 = "Enabled" & SoundSaveLog = "Enabled" then do
            status_sound = "SAVE_LOG"
            call PlaySound
        end

        call SetStatus "* * * End of Jasmine * * *"

        call SaveLog
    end
    else do
        call SetStatus "* * * End of Jasmine * * *"
    end

    if mmos2 = "Enabled" & SoundEnd = "Enabled" then do
        status_sound = "END"
        call PlaySound
    end

    call SetStatus " "

    /* Status表示文字・表示色のClean Up */
    ok = VRSet( "DT_UploadStatus", "Caption", "" )
    ok = VRSet( "DT_UploadStatus", "BackColor", "<default>" )

    /* Hide Cancel Button */
    ok = VRSet( "IRB_CancelUpload", "Visible", 0 )
    ok = VRSet( "IRB_CancelUpload", "Set", 0 )
    ok = VRSet( "PB_Run", "Visible", 1 )

    if SilentStatusIndication = "Enabled" then do
        ok = VRSet( "LB_Status", "Selected", count  )
    end

    if RunMode <> "Selected Site Only" then do

        ok = VRMethod( "LB_Status", "GetStringList", "usl_temp." )

        do i = 1 to usl_temp.0
            usl = usl + 1
            UploadStatusLog.usl = usl_temp.i
        end
        UploadStatusLog.0 = usl
    end

return

/*:VRX         SW_AlertDeleteSite_Close
*/
SW_AlertDeleteSite_Close:
    call SW_AlertDeleteSite_Fini
return

/*:VRX         SW_AlertDeleteSite_Create
*/
SW_AlertDeleteSite_Create:
    call SW_AlertDeleteSite_Init
return

/*:VRX         SW_AlertDeleteSite_Fini
*/
SW_AlertDeleteSite_Fini:
    window = VRInfo( "Window" )
    call VRDestroy window
    drop window
return
/*:VRX         SW_AlertDeleteSite_Init
*/
SW_AlertDeleteSite_Init:
if debug_mode = 1 then say "SW_AlertDeleteSite_Init"

    ok = VRSet( "DT_DeleteSite",     "Font", Font )
    ok = VRSet( "EF_DeleteSiteName", "Font", Font )
    ok = VRSet( "PB_DeleteSiteYes",  "Font", Font )
    ok = VRSet( "PB_DeleteSiteNo",   "Font", Font )

    value = VRGet( "DDCB_FtpSiteList", "Value" )
    ok = VRSet( "EF_DeleteSiteName", "Value", value )

    ok = VRSet( "SW_AlertDeleteSite", "Caption", "Jasmine - Delete Site")

    AlertSite = "ON"

    /* Set Language */
    window_key_name = "L_AlertDeleteSite"
    call SetLanguage window_key_name

    window = VRInfo( "Object" )
    if( \VRIsChildOf( window, "Notebook" ) ) then do
        call VRMethod window, "CenterWindow"
        call VRSet window, "Visible", 1
        call VRMethod window, "Activate"
    end
    drop window
return

/*:VRX         SW_CheckFile_Close
*/
SW_CheckFile_Close:
    call SW_CheckFile_Fini
return

/*:VRX         SW_CheckFile_Create
*/
SW_CheckFile_Create:
    call SW_CheckFile_Init
return

/*:VRX         SW_CheckFile_Fini
*/
SW_CheckFile_Fini:
    window = VRInfo( "Window" )
    call VRDestroy window
    drop window
return
/*:VRX         SW_CheckFile_Init
*/
SW_CheckFile_Init:
if debug_mode = 1 then say "SW_CheckFile_Init"

    /* Set Font */
    ok = VRSet( "LB_FileList",           "Font", font )
    ok = VRSet( "PB_Upload_OK",          "Font", font )
    ok = VRSet( "PB_Upload_Cancel",      "Font", font )
    ok = VRSet( "PB_ChangeUploadStatus", "Font", font )

    ok = VRSet( "LB_FileList", "Font", StatusFont )

    /* Set Previsouly Disabled File */
    do i = 1 to target_file_name.0
        if RememberUploadStatus = "Enabled" then do
            upload_status.i = "Enabled"

            do j = 1 to FtpSiteName.0
                if ftp_host_name = FtpSiteName.j then do
                    host_num = j

                    flug = 0
                    do k = 1 to default_disabled.host_num.0
                        if default_disabled.host_num.k = target_file_name.i then do
                            flug = 1
                            leave
                        end
                    end

                    /* Default Disabled File DataにListupされているFileをDisabledにする */
                    if flug = 1 then do
                        upload_status.i = "Disabled"
                    end

                    leave
                end
            end
        end
        else do /* DefaultDisabledFile = "Enabled" */
            upload_status.i = "Enabled"
        end

        files.i = left(upload_status.i, 8, " ")" : "target_file_name.i
    end
    files.0 = target_file_name.0

    /* 前回のDisabled Listのうち今回未使用分を保管する */
    default_disabled_old.0 = 0
    if (RememberUploadStatus = "Enabled") & (datatype(host_num) = "NUM") then do
        k = 0

        do i = 1 to default_disabled.host_num.0
            flug = 0

            do j = 1 to target_file_name.0
                if default_disabled.host_num.i = target_file_name.j then do
                    flug = 1
                    leave
                end
            end

            if flug = 0 then do
                k = k + 1
                default_disabled_old.k = default_disabled.host_num.i
            end
        end
        default_disabled_old.0 = k
    end


    ok = VRMethod( "LB_FileList", "AddStringList", "files.",  )

    ok = VRMethod( "PB_Upload_OK", "SetFocus" )

    /* Set Size */
    w = VRGet( "MW_Jasmine", "Width" )
    h = VRGet( "MW_Jasmine", "Height" )

    ok = VRSet( "SW_CheckFile", "Width", w )
    ok = VRSet( "SW_CheckFile", "Height", h )

    if ftp_transfer_mode = "FTP" then do
        ok = VRSet( "SW_CheckFile", "Caption", "Jasmine - Upload File List" )
    end
    else if ftp_transfer_mode = "COPY" then do
        ok = VRSet( "SW_CheckFile", "Caption", "Jasmine - Copy File List" )
    end

    check_num_old = 0

    /* Set Language */
    window_key_name = "L_CheckFile"
    call SetLanguage window_key_name

    window = VRInfo( "Object" )
    if( \VRIsChildOf( window, "Notebook" ) ) then do
        call VRMethod window, "CenterWindow"
        call VRSet window, "Visible", 1
        call VRMethod window, "Activate"
    end
    drop window

return

/*:VRX         SW_FailedFileList_Close
*/
SW_FailedFileList_Close: 
    call SW_FailedFileList_Fini
return

/*:VRX         SW_FailedFileList_Create
*/
SW_FailedFileList_Create: 
    call SW_FailedFileList_Init
return

/*:VRX         SW_FailedFileList_Fini
*/
SW_FailedFileList_Fini: 
    window = VRInfo( "Window" )
    call VRDestroy window
    drop window
return
/*:VRX         SW_FailedFileList_Init
*/
SW_FailedFileList_Init: 
if debug_mode = 1 then say "SW_FailedFileList_Init"

    /* Manage Failed File List */
    if FailedFileListWindow = "Disabled" then do
        FailedFileListWindow = "Enabled"

        ok = VRMethod( "LB_FailedFileList", "Clear" )
        ok = VRMethod( "LB_FailedFileList", "AddStringList", "failed_file_list_latest.",  )
    end

    /* Set Font */
    ok = VRSet( "LB_FailedFileList",       "Font", StatusFont )
    ok = VRSet( "PB_ClearFailedData",      "Font", Font )
    ok = VRSet( "PB_FailedFileList_Close", "Font", Font )


    /* Set Language */
    window_key_name = "L_FailedFileList"
    call SetLanguage window_key_name


    window = VRInfo( "Object" )
    if( \VRIsChildOf( window, "Notebook" ) ) then do
        call VRMethod window, "CenterWindow"

        ok = VRSet( "SW_FailedFileList", "Left", FailedFileListPosX )
        ok = VRSet( "SW_FailedFileList", "Top",  FailedFileListPosY )

        call VRSet window, "Visible", 1
        call VRMethod window, "Activate"
    end
    drop window
return

/*:VRX         SW_LogViewer_Close
*/
SW_LogViewer_Close:
    call SW_LogViewer_Fini
return

/*:VRX         SW_LogViewer_Create
*/
SW_LogViewer_Create:
    call SW_LogViewer_Init
return

/*:VRX         SW_LogViewer_Fini
*/
SW_LogViewer_Fini:
    window = VRInfo( "Window" )
    call VRDestroy window
    drop window
return
/*:VRX         SW_LogViewer_Init
*/
SW_LogViewer_Init:
if debug_mode = 1 then say "SW_LogViewer_Init"

    /* Set Log File List */
    ok = VRSet( "EF_LogDirectory", "Value", "log" )

    rc = SysFileTree( JasmineDirectory"\"LogDirectory"\*.log", "logfile.", "of" )
    do i = 1 to logfile.0
        log_len = length(logfile.i) - length(JasmineDirectory) - length(LogDirectory) - 2
        logfile.i = right(logfile.i, log_len )
    end
    ok = VRMethod( "LB_LV_LogFileName", "AddStringList", "logfile." )

    if logfile.0 = 0 then ok = VRSet( "PB_LV_ClearAllLogFiles", "Enabled", 0 )
    else                  ok = VRSet( "PB_LV_ClearAllLogFiles", "Enabled", 1 )

    window_key_name = "L_LogViewer"
    call SetLanguage window_key_name

    /* Set Font */
    ok = VRSet( "DT_LV_LogFileName",      "Font", Font )
    ok = VRSet( "LB_LV_LogFileName",      "Font", Font )
    ok = VRSet( "DT_LV_LogDataItems",     "Font", Font )
    ok = VRSet( "LB_LV_LogTitle",         "Font", StatusFont )
    ok = VRSet( "DT_LV_LogDetail",        "Font", Font )
    ok = VRSet( "MLE_LV_LogDetail",       "Font", StatusFont )
    ok = VRSet( "PB_ExitLogViewer",       "Font", Font )
    ok = VRSet( "PB_LV_ClearAllLogFiles", "Font", Font )
    ok = VRSet( "DT_LogDirectory",        "Font", Font )
    ok = VRSet( "EF_LogDirectory",        "Font", Font )
    ok = VRSet( "EF_LogFileDetail_Date",  "Font", Font )
    ok = VRSet( "EF_LogFileDetail_Time",  "Font", Font )
    ok = VRSet( "EF_LogFileDetail_Size",  "Font", Font )
    ok = VRSet( "EF_LogFileDetail_Attr",  "Font", Font )

    window = VRInfo( "Object" )
    if( \VRIsChildOf( window, "Notebook" ) ) then do
        call VRMethod window, "CenterWindow"
        call VRSet window, "Visible", 1
        call VRMethod window, "Activate"
    end
    drop window
return

/*:VRX         SW_NewSiteName_Close
*/
SW_NewSiteName_Close:
    call SW_NewSiteName_Fini
return

/*:VRX         SW_NewSiteName_Create
*/
SW_NewSiteName_Create:
    call SW_NewSiteName_Init
return

/*:VRX         SW_NewSiteName_Fini
*/
SW_NewSiteName_Fini:
    window = VRInfo( "Window" )
    call VRDestroy window
    drop window
return
/*:VRX         SW_NewSiteName_Init
*/
SW_NewSiteName_Init:
if debug_mode = 1 then say "SW_NewSiteName_Init"

    CopyMode = "FTP"
    ok = VRSet( "SL_EditSiteDataFile", "Percentile", 0 )

    if new_site = "New" then do
        ok = VRSet( "SW_NewSiteName", "Caption", "Jasmine : Enter new Site items..." )

        call ClearNewSiteItems
    end
    else if new_site = "Edit" then do
        ok = VRSet( "SW_NewSiteName", "Caption", "Jasmine : Edit Site items..." )

        selected = VRGet( "DDCB_FtpSiteList", "Selected" )

        ok = VRSet( "EF_NewSiteName",     "Value", FtpSiteName.selected )
        ok = VRSet( "EF_NewAddress",      "Value", FtpSiteAddress.selected )
        ok = VRSet( "EF_NewUserID",       "Value", UserID.selected )
        ok = VRSet( "EF_NewPassword",     "Value", Password.selected )
        ok = VRSet( "EF_NewLocalDir",     "Value", LocalDirectory.selected )
        ok = VRSet( "EF_NewRemoteDir",    "Value", RemoteDirectory.selected )
        ok = VRSet( "EF_NewAccount",      "Value", Account.selected )
        ok = VRSet( "EF_NewCloseCommand", "Value", CloseCommand.selected )

        FtpSiteName_old = FtpSiteName.selected

        CopyMode = Mode.selected
        if CopyMode = "FTP" then do
            ok = VRSet( "RB_NewMode_FTP", "Set", 1 )
        end
        if CopyMode = "COPY" then do
            ok = VRSet( "RB_NewMode_Copy", "Set", 1 )
        end
        call SetModeSet
    end

    /* Set Font */
    ok = VRSet( "DT_NewSiteName",     "Font", font )
    ok = VRSet( "EF_NewSiteName",     "Font", font )
    ok = VRSet( "DT_NewSiteMode",     "Font", font )
    ok = VRSet( "RB_NewMode_FTP",     "Font", font )
    ok = VRSet( "RB_NewMode_Copy",    "Font", font )
    ok = VRSet( "DT_NewAddress",      "Font", font )
    ok = VRSet( "EF_NewAddress",      "Font", font )
    ok = VRSet( "DT_NewUserID",       "Font", font )
    ok = VRSet( "EF_NewUserID",       "Font", font )
    ok = VRSet( "DT_NewPassword",     "Font", font )
    ok = VRSet( "EF_NewPassword",     "Font", font )
    ok = VRSet( "DT_NewAccount",      "Font", font )
    ok = VRSet( "EF_NewAccount",      "Font", font )
    ok = VRSet( "DT_NewLocalDir",     "Font", font )
    ok = VRSet( "EF_NewLocalDir",     "Font", font )
    ok = VRSet( "DT_NewRemoteDir",    "Font", font )
    ok = VRSet( "EF_NewRemoteDir",    "Font", font )
    ok = VRSet( "PB_NewSite_OK",      "Font", font )
    ok = VRSet( "PB_NewSite_Clear",   "Font", font )
    ok = VRSet( "PB_NewSite_Cancel",  "Font", font )
    ok = VRSet( "DT_NewCloseCommand", "Font", font )
    ok = VRSet( "EF_NewCloseCommand", "Font", font )

    /* Set Language */
    window_key_name = "L_NewSiteName"
    call SetLanguage window_key_name

    window = VRInfo( "Object" )
    if( \VRIsChildOf( window, "Notebook" ) ) then do
        call VRMethod window, "CenterWindow"
        call VRSet window, "Visible", 1
        call VRMethod window, "Activate"
    end
    drop window
return

/*:VRX         SW_Preference_Close
*/
SW_Preference_Close:
    call SW_Preference_Fini
return

/*:VRX         SW_Preference_Create
*/
SW_Preference_Create:
    call SW_Preference_Init
return

/*:VRX         SW_Preference_Fini
*/
SW_Preference_Fini:
    window = VRInfo( "Window" )
    call VRDestroy window
    drop window
return
/*:VRX         SW_Preference_Init
*/
SW_Preference_Init:
if debug_mode = 1 then say "SW_Preference_Init"

    call SetPreferenceData

    call SetPreferenceFont

    window = VRInfo( "Object" )
    if( \VRIsChildOf( window, "Notebook" ) ) then do
        call VRMethod window, "CenterWindow"

        ok = VRSet( "SW_Preference", "Left", PreferencePosX )
        ok = VRSet( "SW_Preference", "Top",  PreferencePosY )

        call VRSet window, "Visible", 1
        call VRMethod window, "Activate"
    end
    drop window
return

/*:VRX         SW_Registry_Close
*/
SW_Registry_Close:
    call SW_Registry_Fini
return

/*:VRX         SW_Registry_Create
*/
SW_Registry_Create:
    call SW_Registry_Init
return

/*:VRX         SW_Registry_Fini
*/
SW_Registry_Fini:
    window = VRInfo( "Window" )
    call VRDestroy window
    drop window
return
/*:VRX         SW_Registry_Init
*/
SW_Registry_Init:
if debug_mode = 1 then say "SW_Registry_Init"

    ok = VRSet( "SW_Registry", "Caption", "Jasmine "JasmineVersion )

    if registry_mode = "Startup" then do
        ok = VRSet( "TM_RegistrySleepTimer", "Enabled", 1 )
        ok = VRSet( "PB_NotYet", "Enabled", 0 )
    end
    else do
        ok = VRSet( "TM_RegistrySleepTimer", "Visible", 0 )
        if Registry = "Registered" then do
            ok = VRSet( "DT_RegistryText",    "Visible", 0 )
            ok = VRSet( "EF_RegistoryNumber", "Visible", 0 )

            ok = VRSet( "PB_NotYet",   "Top", 2048 )
            ok = VRSet( "SW_Registry", "Height", 2819 )

            ok = VRSet( "EF_RegistoryNumber", "Value", register_number )

            ok = VRSet( "PB_Registory", "Visible", 0 )
            ok = VRSet( "PB_NotYet", "Caption", "Return" )

            ok = VRSet( "DT_RegistryType", "BackColor", "(32,178,170)" )
            ok = VRSet( "DT_RegistryType", "ForeColor", "White" )
/*
            ok = VRSet( "DT_RegistryType", "Caption", " Registered " )
*/
            ok = VRSet( "DT_RegistryType", "Caption", " Freeware " )

            if left(register_number, 7) = "JSMDEMO" then do
                ok = VRSet( "DT_RegistryType", "Caption", " DEMO " )
            end
        end
    end

    /* Set Font */
    ok = VRSet( "TM_RegistrySleepTimer", "Font", Font )
    ok = VRSet( "DT_Info",               "Font", Font )
    ok = VRSet( "GB_1",                  "Font", Font )
    ok = VRSet( "DT_EMail",              "Font", Font )
    ok = VRSet( "EF_EMail",              "Font", Font )
    ok = VRSet( "DT_URL",                "Font", Font )
    ok = VRSet( "EF_URL",                "Font", Font )
    ok = VRSet( "DT_RegistryText",       "Font", Font )
    ok = VRSet( "EF_RegistoryNumber",    "Font", Font )
    ok = VRSet( "PB_Registory",          "Font", Font )
    ok = VRSet( "PB_NotYet",             "Font", Font )

    reg_cnt = 0

    window = VRInfo( "Object" )
    if( \VRIsChildOf( window, "Notebook" ) ) then do
        call VRMethod window, "CenterWindow"

        call VRSet window, "Visible", 1
        call VRMethod window, "Activate"
    end
    drop window
return

/*:VRX         SW_SelectCompulsoryUploadFile_Close
*/
SW_SelectCompulsoryUploadFile_Close:
    call SW_SelectCompulsoryUploadFile_Fini
return

/*:VRX         SW_SelectCompulsoryUploadFile_Create
*/
SW_SelectCompulsoryUploadFile_Create:
    call SW_SelectCompulsoryUploadFile_Init
return

/*:VRX         SW_SelectCompulsoryUploadFile_Fini
*/
SW_SelectCompulsoryUploadFile_Fini:
    window = VRInfo( "Window" )
    call VRDestroy window
    drop window
return
/*:VRX         SW_SelectCompulsoryUploadFile_Init
*/
SW_SelectCompulsoryUploadFile_Init:
if debug_mode = 1 then say "SW_SelectCompulsoryUploadFile_Init"

    ok = VRSet( "SW_SelectCompulsoryUploadFile", "Caption", "Jasmine ver."JasmineVersion" - Select Compulsory Upload Files" )

    ftp_host_name = VRGet( "DDCB_FtpSiteList", "SelectedString" )
    do i = 1 to FtpSiteName.0
        if ftp_host_name = FtpSiteName.0 then do
            selected = i
        end
    end
    ftp_local_directory  = LocalDirectory.selected
    rc = SysFileTree( ftp_local_directory"\*", "cuf.", "sf" )

    do i = 1 to cuf.0
        parse var cuf.i . . cuf_size.i . dummy_data

        cuf.i = right(dummy_data, length(dummy_data) - length(ftp_local_directory) - 2)
    end
    cuf_size.0 = cuf.0

    ok = VRMethod( "LB_CompulsoryUploadFile", "AddStringList", "cuf.",  )

    /* Set Font */
    ok = VRSet( "LB_CompulsoryUploadFile", "Font", StatusFont )
    ok = VRSet( "PB_Set_CompulsoryUploadFile", "Font", Font )
    ok = VRSet( "PB_Cancel_CompulsoryUploadFile", "Font", Font )


    /* Set Language */
    window_key_name = "L_SelectCompulsoryUploadFile"
    call SetLanguage window_key_name


    window = VRInfo( "Object" )
    if( \VRIsChildOf( window, "Notebook" ) ) then do
        call VRMethod window, "CenterWindow"
        call VRSet window, "Visible", 1
        call VRMethod window, "Activate"
    end
    drop window
return

/*:VRX         SW_SelectRunMode_Close
*/
SW_SelectRunMode_Close:
    call SW_SelectRunMode_Fini
return

/*:VRX         SW_SelectRunMode_Create
*/
SW_SelectRunMode_Create:
    call SW_SelectRunMode_Init
return

/*:VRX         SW_SelectRunMode_Fini
*/
SW_SelectRunMode_Fini:
    window = VRInfo( "Window" )
    call VRDestroy window
    drop window
return
/*:VRX         SW_SelectRunMode_Init
*/
SW_SelectRunMode_Init:
if debug_mode = 1 then say "SW_SelectRunMode_Init"

    window = VRInfo( "Object" )
    if( \VRIsChildOf( window, "Notebook" ) ) then do
        call VRMethod window, "CenterWindow"
        call VRSet window, "Visible", 1
        call VRMethod window, "Activate"
    end
    drop window
return

/*:VRX         SW_SetAlwaysUploadFiles_Close
*/
SW_SetAlwaysUploadFiles_Close:
    call SW_SetAlwaysUploadFiles_Fini
return

/*:VRX         SW_SetAlwaysUploadFiles_Create
*/
SW_SetAlwaysUploadFiles_Create:
    call SW_SetAlwaysUploadFiles_Init
return

/*:VRX         SW_SetAlwaysUploadFiles_Fini
*/
SW_SetAlwaysUploadFiles_Fini:
    window = VRInfo( "Window" )
    call VRDestroy window
    drop window
return
/*:VRX         SW_SetAlwaysUploadFiles_Init
*/
SW_SetAlwaysUploadFiles_Init:
if debug_mode = 1 then say "SW_SetAlwaysUploadFiles_Init"

    ok = VRSet( "EF_AUF_LocalDir", "Value", ftp_local_directory )

    rc = SysFileTree( ftp_local_directory"\*", "auf_dirs.", "d" )
    do i = 1 to auf_dirs.0
        parse var auf_dirs.i . . . . auf_dirs.i
        auf_dirs.i = strip(auf_dirs.i)
        auf_dirs.i = right(auf_dirs.i, length(auf_dirs.i) - length(ftp_local_directory) - 1)
    end

    ok = VRMethod( "LB_AUF_Directory", "AddStringList", "auf_dirs.",  )

    auf_current_dir = ftp_local_directory

    /* Load Files */
    rc = SysFileTree( ftp_local_directory"\*", "auf_files.", "f" )
    do i = 1 to auf_files.0
        parse var auf_files.i . . . . auf_files.i
        auf_files.i = strip(auf_files.i)
        auf_files.i = right(auf_files.i, length(auf_files.i) - length(ftp_local_directory) - 1)
    end

    ok = VRMethod( "LB_AUF_FileName", "AddStringList", "auf_files.",  )


    /* Read Disabled File List */
    call ReadAlwaysUploadFileData

    if always_upload.auf_selected.0 > 0 then do
        do i = 1 to always_upload.auf_selected.0
            auf_lst.i = always_upload.auf_selected.i
        end

        auf_lst.0 = always_upload.auf_selected.0

        ok = VRMethod( "LB_AUF_AlwaysUploadFileList", "AddStringList", "auf_lst.",  )
    end

    ok = VRSet( "SPIN_AUF_Hours", "Value", always_upload_style.auf_selected ) /* edit .selected -> .auf_selected 09.Jun.2001 */

    /* Set Font */
    ok = VRSet( "EF_AUF_LocalDir",             "Font", Font )
    ok = VRSet( "DT_AUF_Directory",            "Font", Font )
    ok = VRSet( "DT_AUF_FileName",             "Font", Font )
    ok = VRSet( "DT_AUF_AlwaysUploadFiles",    "Font", Font )
    ok = VRSet( "PB_AUF_Save",                 "Font", Font )
    ok = VRSet( "PB_AUF_Cancel",               "Font", Font )

    ok = VRSet( "LB_AUF_Directory",            "Font", StatusFont )
    ok = VRSet( "LB_AUF_FileName",             "Font", StatusFont )
    ok = VRSet( "LB_AUF_AlwaysUploadFileList", "Font", StatusFont )

    ok = VRSet( "DT_AUF_Once",                 "Font", Font )
    ok = VRSet( "SPIN_AUF_Hours",              "Font", Font )
    ok = VRSet( "DT_AUF_Hour",                 "Font", Font )

    /* Set Size */
    w = VRGet( "MW_Jasmine", "Width" )
    h = VRGet( "MW_Jasmine", "Height" )

    ok = VRSet( "SW_SetAlwaysUploadFiles", "Width", w )
    ok = VRSet( "SW_SetAlwaysUploadFiles", "Height", h )

    /* Set Language */
    window_key_name = "L_SetAlwaysUploadFiles"
    call SetLanguage window_key_name


    window = VRInfo( "Object" )
    if( \VRIsChildOf( window, "Notebook" ) ) then do
        call VRMethod window, "CenterWindow"
        call VRSet window, "Visible", 1
        call VRMethod window, "Activate"
    end
    drop window
return

/*:VRX         SW_SetExcludeUploadFiles_Close
*/
SW_SetExcludeUploadFiles_Close:
    call SW_SetExcludeUploadFiles_Fini
return

/*:VRX         SW_SetExcludeUploadFiles_Create
*/
SW_SetExcludeUploadFiles_Create:
    call SW_SetExcludeUploadFiles_Init
return

/*:VRX         SW_SetExcludeUploadFiles_Fini
*/
SW_SetExcludeUploadFiles_Fini:
    window = VRInfo( "Window" )
    call VRDestroy window
    drop window
return
/*:VRX         SW_SetExcludeUploadFiles_Init
*/
SW_SetExcludeUploadFiles_Init:
if debug_mode = 1 then say "SW_SetExcludeUploadFiles_Init"

    /* Load Directory */
    ok = VRSet( "EF_MUF_LocalDir", "Value", ftp_local_directory )

    rc = SysFileTree( ftp_local_directory"\*", "muf_dirs.", "d" )
    do i = 1 to muf_dirs.0
        parse var muf_dirs.i . . . . muf_dirs.i
        muf_dirs.i = strip(muf_dirs.i)
        muf_dirs.i = right(muf_dirs.i, length(muf_dirs.i) - length(ftp_local_directory) - 1)
    end

    ok = VRMethod( "LB_MUF_Directory", "AddStringList", "muf_dirs.",  )

    muf_current_dir = ftp_local_directory

    /* Load Files */
    rc = SysFileTree( ftp_local_directory"\*", "muf_files.", "f" )
    do i = 1 to muf_files.0
        parse var muf_files.i . . . . muf_files.i
        muf_files.i = strip(muf_files.i)
        muf_files.i = right(muf_files.i, length(muf_files.i) - length(ftp_local_directory) - 1)
    end

    ok = VRMethod( "LB_MUF_FileName", "AddStringList", "muf_files.",  )


    /* Read Disabled File List */
    call ReadDefaultDisabledFileData

    if default_disabled.muf_selected.0 > 0 then do
        do i = 1 to default_disabled.muf_selected.0
            muf_dd.i = default_disabled.muf_selected.i
        end
        muf_dd.0 = default_disabled.muf_selected.0

        ok = VRMethod( "LB_MUF_UploadExcludedFileList", "AddStringList", "muf_dd.",  )
    end

    ok = VRSet( "PB_MUF_ExcludeSelectedDirectory", "Enabled", 0 )


    /* Set Font */
    ok = VRSet( "EF_MUF_LocalDir",                 "Font", Font )
    ok = VRSet( "DT_MUF_Directory",                "Font", Font )
    ok = VRSet( "DT_MUF_FileName",                 "Font", Font )
    ok = VRSet( "DT_MUF_ExcludedUploadFileList",   "Font", Font )
    ok = VRSet( "PB_MUF_ExcludeSelectedDirectory", "Font", Font )
    ok = VRSet( "PB_MUF_Save",                     "Font", Font )
    ok = VRSet( "PB_MUF_Cancel",                   "Font", Font )

    ok = VRSet( "LB_MUF_Directory",              "Font", StatusFont )
    ok = VRSet( "LB_MUF_FileName",               "Font", StatusFont )
    ok = VRSet( "LB_MUF_UploadExcludedFileList", "Font", StatusFont )

    /* Set Size */
    w = VRGet( "MW_Jasmine", "Width" )
    h = VRGet( "MW_Jasmine", "Height" )

    ok = VRSet( "SW_SetExcludeUploadFiles", "Width", w )
    ok = VRSet( "SW_SetExcludeUploadFiles", "Height", h )

    /* Set Language */
    window_key_name = "L_SetDisabledFiles"
    call SetLanguage window_key_name


    window = VRInfo( "Object" )
    if( \VRIsChildOf( window, "Notebook" ) ) then do
        call VRMethod window, "CenterWindow"
        call VRSet window, "Visible", 1
        call VRMethod window, "Activate"
    end
    drop window
return

/*:VRX         SW_SetSound_Close
*/
SW_SetSound_Close:
    call SW_SetSound_Fini
return

/*:VRX         SW_SetSound_Create
*/
SW_SetSound_Create:
    call SW_SetSound_Init
return

/*:VRX         SW_SetSound_Fini
*/
SW_SetSound_Fini:
    window = VRInfo( "Window" )
    call VRDestroy window
    drop window
return
/*:VRX         SW_SetSound_Init
*/
SW_SetSound_Init:
if debug_mode = 1 then say "SW_SetSound_Init"

    /* Set Font */
    ok = VRSet( "DT_SoundDirectory",           "Font", font )
    ok = VRSet( "EF_Sound_Directory",          "Font", font )
    ok = VRSet( "CB_Sound_Start",              "Font", font )
    ok = VRSet( "EF_Start",                    "Font", font )
    ok = VRSet( "CB_Sound_No_File",            "Font", font )
    ok = VRSet( "EF_No_File",                  "Font", font )
    ok = VRSet( "CB_Sound_Logon_Successfully", "Font", font )
    ok = VRSet( "EF_Logon_Successfully",       "Font", font )
    ok = VRSet( "CB_Sound_Logon_Failed",       "Font", font )
    ok = VRSet( "EF_Logon_Failed",             "Font", font )
    ok = VRSet( "CB_Sound_Save_Log",           "Font", font )
    ok = VRSet( "EF_Save_Log",                 "Font", font )
    ok = VRSet( "CB_Sound_End",                "Font", font )
    ok = VRSet( "EF_End",                      "Font", font )
    ok = VRSet( "PB_Sound_OK",                 "Font", font )
    ok = VRSet( "PB_Sound_Cancel",             "Font", font )
    ok = VRSet( "PB_DefaultSoundSet",          "Font", font )
    ok = VRSet( "DT_SoundVolume",              "Font", font )

    ok = VRSet( "EF_Sound_Directory", "Value", SoundDirectory )

    if SoundStart             = "Enabled" then do
        ok = VRSet( "CB_Sound_Start",              "Set", 1 )
        ok = VRSet( "EF_Start", "Enabled", 1 )
    end
    if SoundNoFile            = "Enabled" then do
        ok = VRSet( "CB_Sound_No_File",            "Set", 1 )
        ok = VRSet( "EF_No_File", "Enabled", 1 )
    end
    if SoundLogonSuccessfully = "Enabled" then do
        ok = VRSet( "CB_Sound_Logon_Successfully", "Set", 1 )
        ok = VRSet( "EF_Logon_Successfully", "Enabled", 1 )
    end
    if SoundLogonFailed       = "Enabled" then do
        ok = VRSet( "CB_Sound_Logon_Failed",       "Set", 1 )
        ok = VRSet( "EF_Logon_Failed", "Enabled", 1 )
    end
    if SoundSaveLog           = "Enabled" then do
        ok = VRSet( "CB_Sound_Save_Log",           "Set", 1 )
        ok = VRSet( "EF_Save_Log", "Enabled", 1 )
    end
    if SoundEnd               = "Enabled" then do
        ok = VRSet( "CB_Sound_End",                "Set", 1 )
        ok = VRSet( "EF_End", "Enabled", 1 )
    end

    ok = VRSet( "EF_Start", "Value", SoundStartRes )
    ok = VRSet( "EF_No_File", "Value", SoundNoFileRes )
    ok = VRSet( "EF_Logon_Successfully", "Value", SoundLogonSuccessfullyRes )
    ok = VRSet( "EF_Logon_Failed", "Value", SoundLogonFailedRes )
    ok = VRSet( "EF_Save_Log", "Value", SoundSaveLogRes )
    ok = VRSet( "EF_End", "Value", SoundEndRes )

    /* Sound Volume Slider */
    i = random(1, RibbonColor.0)
    RibbonColor_temp = RibbonColor.i

    r_red   = X2D(left(RibbonColor_temp, 2))
    r_green = X2D(right(left(RibbonColor_temp, 4), 2))
    r_blue  = X2D(right(RibbonColor_temp, 2))

    RibbonColor_dec = "("r_red","r_green","r_blue")"
    ok = VRSet( "SL_SoundVolume", "RibbonColor", RibbonColor_dec )
    ok = VRSet( "SL_SoundVolume", "Percentile", SoundVolume )

    /* Set Language */
    window_key_name = "L_SetSound"
    call SetLanguage window_key_name

    window = VRInfo( "Object" )
    if( \VRIsChildOf( window, "Notebook" ) ) then do
        call VRMethod window, "CenterWindow"
        call VRSet window, "Visible", 1
        call VRMethod window, "Activate"
    end
    drop window
return

/*:VRX         SW_Takeout_Close
*/
SW_Takeout_Close:
    call SW_Takeout_Fini
return

/*:VRX         SW_Takeout_Create
*/
SW_Takeout_Create:
    call SW_Takeout_Init
return

/*:VRX         SW_Takeout_Fini
*/
SW_Takeout_Fini:
    window = VRInfo( "Window" )
    call VRDestroy window
    drop window
return
/*:VRX         SW_Takeout_Init
*/
SW_Takeout_Init:
if debug_mode = 1 then say "SW_Takeout_Init"

    ok = VRSet( "SW_Takeout", "Caption", "Jasmine Takeout ver."JasmineVersion )

    call SetTakeoutWindowData
    call SetTakeoutWindowFont

    /* Set Language */
    window_key_name = "L_Takeout"
    call SetLanguage window_key_name

    window = VRInfo( "Object" )
    if( \VRIsChildOf( window, "Notebook" ) ) then do
        call VRMethod window, "CenterWindow"

        rc = VRGet( "MW_Jasmine", "WindowState" )

        if rc = "Normal" then do
            call VRSet window, "Visible", 1
        end
        else if rc = "Minimized" then do
            call VRSet window, "Visible", 0
        end

        call VRMethod window, "Activate"
    end
    drop window

    /* Check Registration */
/*
    if Registry <> "Registered" then do
        registry_sleep = 20 /* 二度目のスリープタイムは半分の10秒が適当？ → 15秒(2.49 beta 11) → 20秒(2.76 beta 6)*/
        registry_mode = "Startup"
        ok = VRLoadSecondary( "SW_Registry", "W" )
        registry_mode = "Normal"
    end
*/

    if AutoTakeout = "Enabled" & ManualTakeout = "Disabled" then do
        call PB_RunTakeoutAutomatically_Click
        call PB_ExitTakeout_Click
    end

return

/*:VRX         SW_TimerRun_Close
*/
SW_TimerRun_Close: 
    call SW_TimerRun_Fini
return

/*:VRX         SW_TimerRun_Create
*/
SW_TimerRun_Create: 
    call SW_TimerRun_Init
return

/*:VRX         SW_TimerRun_Fini
*/
SW_TimerRun_Fini: 
    window = VRInfo( "Window" )
    call VRDestroy window
    drop window
return
/*:VRX         SW_TimerRun_Init
*/
SW_TimerRun_Init: 
if debug_mode = 1 then say "SW_TimerRun_Init"

    /* Set Site Name */
    ok = VRMethod( "DDCB_TimerRun_SiteList", "AddString", "* All Sites",  )
    ok = VRMethod( "DDCB_TimerRun_SiteList", "AddString", "* All FTP Sites",  )
    ok = VRMethod( "DDCB_TimerRun_SiteList", "AddString", "* All Copy Sites",  )
    ok = VRMethod( "DDCB_TimerRun_SiteList", "AddStringList", "FtpSiteName.",  )
    ok = VRSet( "DDCB_TimerRun_SiteList", "Selected", 4 )
    
    /* Set Initial */
    do i = 1 to 60
        TR_int.i = i
        TR_mm.i = right(i - 1, 2, "0")
    end
    TR_int.0 = 60
    TR_mm.0 = 60
    ok = VRMethod( "SPIN_TimerRun_RunRegularly_Interval", "SetStringList", "TR_int." )
    ok = VRSet( "SPIN_TimerRun_RunRegularly_Interval", "Index", 1 )

    ok = VRSet( "SPIN_TimerRun_RunRegularly_IntervalUnit", "Value", "Minutes" )

    do i = 1 to 24
        TR_hh.i = right(i - 1, 2, "0")
    end
    TR_hh.0 = 24

    ok = VRMethod( "SPIN_TimerRun_FixedTime_HH", "SetStringList", "TR_hh." )
    ok = VRMethod( "SPIN_TimerRun_RunFixedTime_MM", "SetStringList", "TR_mm." )

    ok = VRSet( "SPIN_TimerRun_FixedTime_HH",    "Index", 1 )
    ok = VRSet( "SPIN_TimerRun_RunFixedTime_MM", "Index", 1 )

    ok = VRSet( "PB_TimerRun_Change", "Enabled", 0 )
    ok = VRSet( "PB_TimerRun_Delete", "Enabled", 0 )

    /* Set Timer Run Items */
    do i = 1 to TimerRunMode.TRSITENAME.0
        position = VRMethod( "LB_TimerRun_List", "AddString", TimerRunMode.TRSITENAME.i", "TimerRunMode.TRMODE.i", "TimerRunMode.TRPARAM.i,  )
    end

    ok = VRSet( "PB_TimerRun_Set",    "Enabled", 0 )
    ok = VRSet( "PB_TimerRun_Change", "Enabled", 0 )
    ok = VRSet( "PB_TimerRun_Delete", "Enabled", 0 )

    if CopyShadowToStartupFolder = "Yes" then do
        ok = VRSet( "CB_Minimized_Startup",               "Enabled", 1 )

        ok = VRSet( "CB_Create_Object_at_Startup_Folder", "Set", 1 )
    end
    else do
        ok = VRSet( "CB_Minimized_Startup",               "Enabled", 0 )

        ok = VRSet( "CB_Create_Object_at_Startup_Folder", "Set", 0 )
    end

    if StartMinimized = "Yes" then do
        ok = VRSet( "CB_Minimized_Startup", "Set", 1 )
    end
    else do
        ok = VRSet( "CB_Minimized_Startup", "Set", 0 )
    end

    if ShowTimerCounter = "Yes" then do
        ok = VRSet( "CB_Show_Timer_Counter", "Set", 1 )
    end
    else do
        ok = VRSet( "CB_Show_Timer_Counter", "Set", 0 )
    end

    if RunAtStartup = "Enabled" then do
        ok = VRSet( "CB_RunAtStartup", "Set", 1 )
    end
    else do
        ok = VRSet( "CB_RunAtStartup", "Set", 0 )
    end    

    /* Set Language File */
    window_key_name = "L_TimerRun"
    call SetLanguage window_key_name

    /* Set Font */
    ok = VRSet( "LB_TimerRun_List",                        "Font", StatusFont )
    ok = VRSet( "DT_TimerRun_Text_SiteName",               "Font", Font )
    ok = VRSet( "DDCB_TimerRun_SiteList",                  "Font", Font )
    ok = VRSet( "RB_RunRegularly",                         "Font", Font )
    ok = VRSet( "DT_RunRegurary_TextEvery",                "Font", Font )
    ok = VRSet( "SPIN_TimerRun_RunRegularly_Interval",     "Font", Font )
    ok = VRSet( "SPIN_TimerRun_RunRegularly_IntervalUnit", "Font", Font )
    ok = VRSet( "RB_RunFixedTime",                         "Font", Font )
    ok = VRSet( "SPIN_TimerRun_FixedTime_HH",              "Font", Font )
    ok = VRSet( "DT_RunRegurary_TextColon",                "Font", Font )
    ok = VRSet( "SPIN_TimerRun_RunFixedTime_MM",           "Font", Font )
    ok = VRSet( "PB_TimerRun_Set",                         "Font", Font )
    ok = VRSet( "PB_TimerRun_Change",                      "Font", Font )
    ok = VRSet( "PB_TimerRun_Delete",                      "Font", Font )
    ok = VRSet( "PB_TimerRun_Return",                      "Font", Font )
    ok = VRSet( "CB_Create_Object_at_Startup_Folder",      "Font", Font )
    ok = VRSet( "PB_OpenStartupFolder",                    "Font", Font )
    ok = VRSet( "CB_Minimized_Startup",                    "Font", Font )
    ok = VRSet( "CB_Show_Timer_Counter",                   "Font", Font )
    ok = VRSet( "CB_RunAtStartup",                         "Font", Font )


    window = VRInfo( "Object" )
    if( \VRIsChildOf( window, "Notebook" ) ) then do
        call VRMethod window, "CenterWindow"

        ok = VRSet( "SW_TimerRun", "Left", TimerRunPosX )
        ok = VRSet( "SW_TimerRun", "Top",  TimerRunPosY )

        call VRSet window, "Visible", 1
        call VRMethod window, "Activate"
    end
    drop window
return

/*:VRX         TakeoutFile
*/
TakeoutFile:
if debug_mode = 1 then say "TakeoutFile"

    takeout_cancel = "No"

    takeout_success_num = 0
    takeout_fail_num    = 0

    ok = VRMethod( "LB_UploadedFileList", "GetSelectedList", "DeleteData." )
    ok = VRMethod( "LB_UploadedFileList", "GetSelectedStringList", "DeleteFileName." )

    do t = 1 to DeleteData.0 

        set = VRGet( "IRB_CancelTakeout", "Set" )
        if set = 1 then takeout_cancel = "Yes"

        if takeout_cancel = "Yes" then do
            ok = VRSet( "LB_TakeoutStatus", "BackColor", color_failed )
            call SetStatus "##### CANCELED BY USER #####"

            leave
        end

        /* Remote Directoryまで移動 */
        /* FtpSysするとどうもStandard Outに出力がある模様(特に機能的に問題があるわけではない) */
        say "----- Call FtpChDir() ----- DIR="d.dirs
        rc = FtpChDir(ftp_remote_directory)
        say "----- End of FtpChDir() -----"

        if rc <> 0 then do
            temp = ftp_remote_directory

/*          if temp > 0 then do */
            if length(temp) > 0 then do
                i = 0
                do forever
                    i = i + 1
                    pos = pos("/", temp)

                    if pos > 0      then  rmt_dir = left(temp, pos - 1)
                    else if pos = 0 then  rmt_dir = temp

                    /* FtpSysするとどうもStandard Outに出力がある模様(特に機能的に問題があるわけではない) */
                    say "----- Call FtpChDir() ----- DIR="rmt_dir
                    rc = FtpChDir(rmt_dir)
                    say "----- End of FtpChDir() -----"

                    if pos = 0 then leave

                    temp = right(temp, length(temp) - pos)
                end
            end
        end

        /* Set Takeout File Directory */
        dir_num = 0
        do j = 1 to length(DeleteFileName.t)
            check = substr(DeleteFileName.t, j, 1)
            if check = "\" then dir_num = dir_num + 1
        end

        dir_length = lastpos("\", DeleteFileName.t)
        if dir_length > 0 then do
            dir_name = left(TakeoutItem.t, dir_length - 1)
            takeout_file_name = right(DeleteFileName.t, length(DeleteFileName.t) - length(dir_name"\"))
        end
        else do
            dir_name = "."
            takeout_file_name = DeleteFileName.t
        end

        /* before upload */
        if dir_num > 0 then do
            call ChangeRemoteDirectory
        end

        /* REMOVE REMOTE FILE */
        status = right(t,length(DeleteFileName.0),"0")"/"right(DeleteFileName.0, length(DeleteFileName.0), "0")
        call SetStatus status":TKO:Takeout  *"DeleteFileName.t

        rc = FtpDelete( takeout_file_name )

        ok = VRMethod( "LB_TakeoutStatus", "Delete", count )
        if rc = 0 then do
            ok = VRSet( "LB_TakeoutStatus", "BackColor", color_success )
            status = right(t,length(DeleteFileName.0),"0")"/"right(DeleteFileName.0, length(DeleteFileName.0), "0")
            call SetStatus status":TKO:Completed:"translate(DeleteFileName.t, "/", "\")

            takeout_success_num = takeout_success_num + 1

            /* Error等で正しく消去できなかったファイルはリストに残すように仕様変更 (2.81 beta 1, 16.May.1999) */
            /* Takeout Itemをリストから削除 */
            ok = VRMethod( "LB_UploadedFileList", "DeleteString", DeleteFileName.t )
        end
        else if rc <> 0 then do
            ok = VRSet( "LB_TakeoutStatus", "BackColor", color_failed )
            status = right(t,length(DeleteFileName.0),"0")"/"right(DeleteFileName.0, length(DeleteFileName.0), "0")
            call SetStatus status":TKO:Failed   !"DeleteFileName.t" [FtpErrNo:"ftperrno"]"

            takeout_fail_num = takeout_fail_num + 1
        end

        /* Set Takeout Slider */
        percent = 100 - (t * 100) % TakeoutItem.0
        ok = VRSet( "SL_TakeoutStatus", "Percentile", percent )

        /* Default Remote Directoryに戻る */
        if dir_num > 0 then do
            do j = dir_num to 0 by -1
            /* FtpSysするとどうもStandard Outに出力がある模様(特に機能的に問題があるわけではない) */
                say "----- Call FtpChDir() ----- DIR=.."
                rc = FtpChDir("..")
                say "----- End of FtpChDir() -----"

                /* FtpSysするとどうもStandard Outに出力がある模様(特に機能的に問題があるわけではない) */
                say "----- Call FtpRmDir() ----- DIR="d.j
                rc = FtpRmDir(d.j)
                say "----- End ofl FtpRmDir() ----- "
                if rc = 0 then do
                    call SetStatus ">Remove directory ["d.j"]"
                end
            end
        end
    end




















/*
    do t = 1 to TakeoutItem.0

        set = VRGet( "IRB_CancelTakeout", "Set" )
        if set = 1 then takeout_cancel = "Yes"

        if takeout_cancel = "Yes" then do
            ok = VRSet( "LB_TakeoutStatus", "BackColor", color_failed )
            call SetStatus "##### CANCELED BY USER #####"

            leave
        end

        /* Remote Directoryまで移動 */
        /* FtpSysするとどうもStandard Outに出力がある模様(特に機能的に問題があるわけではない) */
        say "----- Call FtpChDir() ----- DIR="d.dirs
        rc = FtpChDir(ftp_remote_directory)
        say "----- End of FtpChDir() -----"

        if rc <> 0 then do
            temp = ftp_remote_directory

/*          if temp > 0 then do */
            if length(temp) > 0 then do
                i = 0
                do forever
                    i = i + 1
                    pos = pos("/", temp)

                    if pos > 0      then  rmt_dir = left(temp, pos - 1)
                    else if pos = 0 then  rmt_dir = temp

                    /* FtpSysするとどうもStandard Outに出力がある模様(特に機能的に問題があるわけではない) */
                    say "----- Call FtpChDir() ----- DIR="rmt_dir
                    rc = FtpChDir(rmt_dir)
                    say "----- End of FtpChDir() -----"

                    if pos = 0 then leave

                    temp = right(temp, length(temp) - pos)
                end
            end
        end

        /* Set Takeout File Directory */
        dir_num = 0
        do j = 1 to length(TakeoutItem.t)
            check = substr(TakeoutItem.t, j, 1)
            if check = "\" then dir_num = dir_num + 1
        end

        dir_length = lastpos("\", TakeoutItem.t)
        if dir_length > 0 then do
            dir_name = left(TakeoutItem.t, dir_length - 1)
            takeout_file_name = right(TakeoutItem.t, length(TakeoutItem.t) - length(dir_name"\"))
        end
        else do
            dir_name = "."
            takeout_file_name = TakeoutItem.t
        end

        /* before upload */
        if dir_num > 0 then do
            call ChangeRemoteDirectory
        end

        /* REMOVE REMOTE FILE */
        status = right(t,length(TakeoutItem.0),"0")"/"right(TakeoutItem.0, length(TakeoutItem.0), "0")
        call SetStatus status":Takeout  *"TakeoutItem.t

        rc = FtpDelete( takeout_file_name )

        ok = VRMethod( "LB_TakeoutStatus", "Delete", count )
        if rc = 0 then do
            ok = VRSet( "LB_TakeoutStatus", "BackColor", color_success )
            status = right(t,length(TakeoutItem.0),"0")"/"right(TakeoutItem.0, length(TakeoutItem.0), "0")
            call SetStatus status":Completed:"translate(TakeoutItem.t, "/", "\")

            takeout_success_num = takeout_success_num + 1

            /* Error等で正しく消去できなかったファイルはリストに残すように仕様変更 (2.81 beta 1, 16.May.1999) */
            /* Takeout Itemをリストから削除 */
            ok = VRMethod( "LB_UploadedFileList", "DeleteString", TakeoutItem.t )
/*
            ok = VRMethod( "LB_UploadedFileList", "Delete", tko_selitem_num.t )
*/

        end
        else if rc <> 0 then do
            ok = VRSet( "LB_TakeoutStatus", "BackColor", color_failed )
            status = right(t,length(TakeoutItem.0),"0")"/"right(TakeoutItem.0, length(TakeoutItem.0), "0")
            call SetStatus status":Failed   !"TakeoutItem.t" [FtpErrNo:"ftperrno"]"

            takeout_fail_num = takeout_fail_num + 1
        end

        /* Set Takeout Slider */
        percent = 100 - (t * 100) % TakeoutItem.0
        ok = VRSet( "SL_TakeoutStatus", "Percentile", percent )

        /* Default Remote Directoryに戻る */
        if dir_num > 0 then do
            do j = dir_num to 0 by -1
            /* FtpSysするとどうもStandard Outに出力がある模様(特に機能的に問題があるわけではない) */
                say "----- Call FtpChDir() ----- DIR=.."
                rc = FtpChDir("..")
                say "----- End of FtpChDir() -----"

                /* FtpSysするとどうもStandard Outに出力がある模様(特に機能的に問題があるわけではない) */
                say "----- Call FtpRmDir() ----- DIR="d.j
                rc = FtpRmDir(d.j)
                say "----- End ofl FtpRmDir() ----- "
                if rc = 0 then do
                    call SetStatus ">Remove directory ["d.j"]"
                end
            end
        end
    end
*/


/* PENDING */
/*
    /* Remote Directoryそのものを消去する (2.81 beta 1, 16.May.1999) */
    parse var ftp_remote_directory . "/" frd
    call SetStatus "[Remove Remote Directory]"
    do forever
        parse var frd frdnext "/" dummy

        /* FtpSysするとどうもStandard Outに出力がある模様(特に機能的に問題があるわけではない) */
        say "----- Call FtpRmDir() ----- DIR="frd
        rc = FtpRmDir(frd)
        say "----- End ofl FtpRmDir() ----- "
        if rc = 0 then do
            call SetStatus ">Remove directory ["frd"]"
        end

        if dummy = "" then do
            leave
        end
        else do
            nop
        end

        frd = frdnext
    end
*/

return

/*:VRX         TakeoutFileLocal
*/
TakeoutFileLocal:
if debug_mode = 1 then say "TakeoutFileLocal"

    takeout_cancel = "No"

    takeout_success_num = 0
    takeout_fail_num    = 0

    do t = 1 to TakeoutItem.0

        set = VRGet( "IRB_CancelTakeout", "Set" )
        if set = 1 then takeout_cancel = "Yes"
        if takeout_cancel = "Yes" then do
            ok = VRSet( "LB_TakeoutStatus", "BackColor", color_failed )
            call SetStatus "##### CANCELED BY USER #####"

            leave
        end

        /* Delete Target Destination File */
        status = right(t,length(TakeoutItem.0),"0")"/"right(TakeoutItem.0, length(TakeoutItem.0), "0")

        call SetStatus status":TKO:Takeout  *"TakeoutItem.t

        /*
         * VRDeleteFile()だと文字コードに`\'のある日本語のファイルの消去の時Errorが
         * 発生する為、REXXユーティリティ関数(RexxUtil)のSysFileDelete()を使用する
         * 様に仕様変更(14.Aug.98 2.49 beta 9)
         *
         * VRDeleteFile()とSysFileDelete()のrcが異なる事に注意！
         */
        /*
        rc = SysFileDelete( ftp_remote_directory"\"TakeoutItem.t )
        */
        rc = SysFileDelete( TakeoutItem.t )

        ok = VRMethod( "LB_TakeoutStatus", "Delete", count )
        if rc = 0 then do
            ok = VRSet( "LB_TakeoutStatus", "BackColor", color_success )
            status = right(t,length(TakeoutItem.0),"0")"/"right(TakeoutItem.0, length(TakeoutItem.0), "0")
            call SetStatus status":TKO:Completed:"translate(TakeoutItem.t, "/", "\")

            takeout_success_num = takeout_success_num + 1

            /* Error等で正しく消去できなかったファイルはリストに残すように仕様変更 (15.Jul.2001) */
            /* Takeout Itemをリストから削除 (ここに移動。15.Jul.2001) */
            ok = VRMethod( "LB_UploadedFileList", "DeleteString", TakeoutItem.t )
        end
        else if rc <> 0 then do
            ok = VRSet( "LB_TakeoutStatus", "BackColor", color_failed )
            status = right(t,length(TakeoutItem.0),"0")"/"right(TakeoutItem.0, length(TakeoutItem.0), "0")
            call SetStatus status":TKO:Failed   !"TakeoutItem.t" [rc="rc"]"

            takeout_fail_num = takeout_fail_num + 1
        end

        /* Set Takeout Slider */
        percent = 100 - (t * 100) % TakeoutItem.0
        ok = VRSet( "SL_TakeoutStatus", "Percentile", percent )

        /* Remove Directory */
        dir_num = 0
        do j = 1 to length(TakeoutItem.t)
            check = substr(TakeoutItem.t, j, 1)
            if check = "\" then dir_num = dir_num + 1
        end

        tgt_dir = TakeoutItem.t

        do j = 1 to dir_num
            lp = lastpos("\", tgt_dir)

            tgt_dir = left(TakeoutItem.t, lp - 1)
            rc = VRRmDir(ftp_remote_directory"\"tgt_dir)
            if rc = 1 then do
                call SetStatus ">Remove directory ["tgt_dir"]"
            end
        end

/*
        /* Error等で正しく消去できなかったファイルはリストに残すように仕様変更 (15.Jul.2001) -> 上に移動 */
        /* Takeout Itemをリストから削除 */
        ok = VRMethod( "LB_UploadedFileList", "DeleteString", TakeoutItem.t )
*/
    end

    if takeout_cancel = "No" then do
        ok = VRSet( "LB_TakeoutStatus", "BackColor", "<default>" )
    end

return

/*:VRX         TM_AlertTimer_Trigger
*/
TM_AlertTimer_Trigger:

    if AlertMessage = "Yes" then do
        ok = VRSet( "SW_AlertDeleteSite", "Caption", "Delete Site" )
    end
    else if AlertMessage = "ON" then do
        ok = VRSet( "SW_AlertDeleteSite", "Caption", "" )
    end

return

/*:VRX         TM_RegistryAnimationTimer_Trigger
*/
TM_RegistryAnimationTimer_Trigger:

    reg_cnt = reg_cnt + 1

    select
        when reg_cnt = 2 then do
            ok = VRSet( "Pict_JasmineIcon", "PicturePath", "#130" )
        end
        when reg_cnt = 4 then do
            ok = VRSet( "Pict_JasmineIcon", "PicturePath", "#132" )
        end
        when reg_cnt = 6 then do
            ok = VRSet( "Pict_JasmineIcon", "PicturePath", "#130" )
        end
        when reg_cnt = 8 then do
            ok = VRSet( "Pict_JasmineIcon", "PicturePath", "#132" )
        end
        when reg_cnt = 10 then do
            ok = VRSet( "Pict_JasmineIcon", "PicturePath", "#130" )
        end
        when reg_cnt = 12 then do
            ok = VRSet( "Pict_JasmineIcon", "PicturePath", "#132" )
        end
        when reg_cnt = 14 then do
            ok = VRSet( "Pict_JasmineIcon", "PicturePath", "#140" )
            ok = VRSet( "DT_JasmineTitle", "Caption", "" )
        end
        when reg_cnt = 15 then do
            ok = VRSet( "DT_JasmineTitle", "Caption", "m" )
        end
        when reg_cnt = 16 then do
            ok = VRSet( "DT_JasmineTitle", "Caption", "smi" )
        end
        when reg_cnt = 17 then do
            ok = VRSet( "DT_JasmineTitle", "Caption", "asmin" )
        end
        when reg_cnt = 18 then do
            ok = VRSet( "DT_JasmineTitle", "Caption", "Jasmine" )
            reg_cnt = 0
        end

        otherwise
    end

return

/*:VRX         TM_RegistrySleepTimer_Trigger
*/
TM_RegistrySleepTimer_Trigger:

    registry_sleep = registry_sleep - 1

    select
        when registry_sleep = 0 then do
            ok = VRSet( "TM_RegistrySleepTimer", "Visible", 0 )
            ok = VRSet( "PB_NotYet", "Enabled", 1 )
        end
        otherwise do
            ok = VRSet( "TM_RegistrySleepTimer", "Caption", "Pausing for "registry_sleep" sec." )
        end
    end

return

/*:VRX         TM_TimerRun_Timer_Trigger
*/
TM_TimerRun_Timer_Trigger: 

    TimerCount_Stock = 0

    tc_d = right(TimerCount % (24 * 60 * 60)                         , 2, "0")
    tc_h = right((TimerCount - tc_d * 24 * 60 * 60) % (60 * 60)      , 2, "0")
    tc_m = right((TimerCount - (tc_d * 24 + tc_h) * 60 * 60) % 60    , 2, "0")
    tc_s = right((TimerCount - ((tc_d * 24 + tc_h) * 60 + tc_m) * 60), 2, "0")

    if tc_m >= 60 then do
        tc_before_fix = tc_d"d "tc_h":"tc_m":"tc_s" - "tr_sn
        parse var tc_before_fix tc_before_fix "-" .

        tc_m_fix = tc_m // 60
        tc_h_fix = tc_m % 60

        tc_m = tc_m_fix
    
        tc_h = tc_h + tc_h_fix

        if tc_h > 24 then do
            tc_d = tc_d + 1
            tc_h = tc_h - 24
        end

        TimerCount = tc_d * (24 * 60 * 60) + tc_h * (60 * 60) + tc_m * 60 + tc_s

        TimerRunCounter = TimerRunCounter + 1
        TimerRunStatus.TimerRunCounter = "TIME FIX:"tc_before_fix" -> "tc_d"d "tc_h":"tc_m":"tc_s" - "tr_sn
        TimerRunStatus.0 = TimerRunCounter

        ok = VRMethod( "LB_Status", "Clear" )
        ok = VRMethod( "LB_Status", "AddStringList", "TimerRunStatus.",  )
    end

   
    if tc_d > 0 then do
        ok = VRSet( "TM_TimerRun_Timer", "Caption", tc_d"d "tc_h":"tc_m":"tc_s )
    end
    else do
        ok = VRSet( "TM_TimerRun_Timer", "Caption", tc_h":"tc_m":"tc_s )
    end

    if TimerRunMode.TRSITENAME.0 > 0 then do

        /* Timer Run実行時に選択されていたSite Nameを記録 */
        SiteName_SelectedAtTimerRun = VRGet( "DDCB_FtpSiteList", "Selected" )
        /*
        RunMode_SelectedAtTimerRun  = VRGet( "SPIN_JasmineRunMode", "Value" )
        */

        do tr_cnt = 1 to TimerRunMode.TRSITENAME.0

            if TimerRunMode.TRMODE.tr_cnt = "Run Regularly" then do
                parse var TimerRunMode.TRPARAM.tr_cnt . TR_Interval TR_Units

                if TR_Units = "Minutes" then do
                    TR_Interval = TR_Interval * 60
                end
                else if TR_Units = "Hours" then do
                    TR_Interval = TR_Interval * 60 * 60
                end

                if ((TimerCount // TR_Interval = 0) & (TimerCount > 0)) | ((RunAtStartup = "Enabled") & (TimerCount = 0)) then do
                    PrevTime = CurTime

                    if left(TimerRunMode.TRSITENAME.tr_cnt, 5) = "* All" then do
                        tr_bulk_name = right(TimerRunMode.TRSITENAME.tr_cnt, length(TimerRunMode.TRSITENAME.tr_cnt) - 2)
                        ok = VRSet( "SPIN_JasmineRunMode", "Value", tr_bulk_name )
                        call SPIN_JasmineRunMode_Change
                        tr_sn = tr_bulk_name
                    end
                    else do
                        ok = VRMethod( "DDCB_FtpSiteList", "GetStringList", "sn_all." )
                        do tr_j = 1 to sn_all.0
                            if sn_all.tr_j = TimerRunMode.TRSITENAME.tr_cnt then do
                                ok = VRSet( "DDCB_FtpSiteList", "Selected", tr_j )
                                call DDCB_FtpSiteList_Change
                                tr_sn = sn_all.tr_j
                                leave
                            end
                        end
                    end

                    TR_StartTime = time("S")

                    /* 強制的に設定を変更 */
                    UploadFileCheck_old = "" /* Dummy Value */
                    if UploadFileCheck = "Yes" then do
                        UploadFileCheck_old = "Yes"
                        UploadFileCheck = "No"
                    end

                    if DefaultRunMode <> "Selected Site Only" then do
                        ok = VRSet( "SPIN_JasmineRunMode", "Value", "Selected Site Only" )
                    end
                    /* * * * * */

                    /*
                    call PB_Run_Click
                    */
                    ok = VRMethod( "LB_Status", "Clear" )
                    call Run

                    TimerRunCounter = TimerRunCounter + 1
                    TimerRunStatus.TimerRunCounter = tc_d"d "tc_h":"tc_m":"tc_s" - "tr_sn
                    TimerRunStatus.0 = TimerRunCounter

                    ok = VRMethod( "LB_Status", "Clear" )
                    ok = VRMethod( "LB_Status", "AddStringList", "TimerRunStatus.",  )

                    /* 元の設定に戻す */
                    if UploadFileCheck_old = "Yes" then UploadFileCheck = UploadFileCheck_old
    

                    /* Timer Run実行時に選択されていたSite Nameに戻す */
                    ok = VRSet( "DDCB_FtpSiteList", "Selected", SiteName_SelectedAtTimerRun )
                    ok = VRSet( "SPIN_JasmineRunMode", "Value", DefaultRunMode )
                    /*
                    ok = VRSet( "SPIN_JasmineRunMode", "Value", RunMode_SelectedAtTimerRun )
                    */
                    /* * * * * */

                    TR_EndTime = time("S")

                    TimerCount_Stock = TimerCount_Stock + (TR_EndTime - TR_StartTime)                    
                end
            end

            if TimerRunMode.TRMODE.tr_cnt = "Run Fixed Time" then do

                CurTime = left(Time(), 5)

                if strip(TimerRunMode.TRPARAM.tr_cnt) = CurTime then do
                    if CurTime <> PrevTime then do
                        PrevTime = CurTime

                        if left(TimerRunMode.TRSITENAME.tr_cnt, 5) = "* All" then do
                            tr_bulk_name = right(TimerRunMode.TRSITENAME.tr_cnt, length(TimerRunMode.TRSITENAME.tr_cnt) - 2)
                            ok = VRSet( "SPIN_JasmineRunMode", "Value", tr_bulk_name )
                            call SPIN_JasmineRunMode_Change
                            tr_sn = tr_bulk_name
                        end
                        else do
                            ok = VRMethod( "DDCB_FtpSiteList", "GetStringList", "sn_all." )
                            do tr_j = 1 to sn_all.0
                                if sn_all.tr_j = TimerRunMode.TRSITENAME.tr_cnt then do
                                    ok = VRSet( "DDCB_FtpSiteList", "Selected", tr_j )
                                    tr_sn = sn_all.tr_j
                                    leave
                                end
                            end
                        end

                        TR_StartTime = time("S")

                        /* 強制的に設定を変更 */
                        UploadFileCheck_old = "" /* Dummy Value */
                        if UploadFileCheck = "Yes" then do
                            UploadFileCheck_old = "Yes"
                            UploadFileCheck = "No"
                        end
    
                        if DefaultRunMode <> "Selected Site Only" then do
                            ok = VRSet( "SPIN_JasmineRunMode", "Value", "Selected Site Only" )
                        end
                        /* * * * * */

                        /*
                        call PB_Run_Click
                        */
                        ok = VRMethod( "LB_Status", "Clear" )
                        call Run

                        TimerRunCounter = TimerRunCounter + 1
                        TimerRunStatus.TimerRunCounter = CurTime" - "tr_sn
                        TimerRunStatus.0 = TimerRunCounter

                        ok = VRMethod( "LB_Status", "Clear" )
                        ok = VRMethod( "LB_Status", "AddStringList", "TimerRunStatus.",  )

                        /* 元の設定に戻す */
                        if UploadFileCheck_old = "Yes" then UploadFileCheck = UploadFileCheck_old

                        /* Timer Run実行時に選択されていたSite Nameに戻す */
                        ok = VRSet( "DDCB_FtpSiteList", "Selected", SiteName_SelectedAtTimerRun )
                        ok = VRSet( "SPIN_JasmineRunMode", "Value", DefaultRunMode )
                        /*
                        ok = VRSet( "SPIN_JasmineRunMode", "Value", RunMode_SelectedAtTimerRun )
                        */
                        /* * * * * */

                        TR_EndTime = time("S")

                        TimerCount_Stock = TimerCount_Stock + (TR_EndTime - TR_StartTime)                    
                    end
                end
            end
        end
    end

    if TimerCount_Stock > 0 then do
        TimerCount = TimerCount + TimerCount_Stock
        TimerCount_Stock = 0
    end

    TimerCount = TimerCount + 1 

return

/*:VRX         UpdateAlwaysUploadFileData
*/
UpdateAlwaysUploadFileData:
if debug_mode = 1 then say "UpdateAlwaysUploadFileData"

    call SetStatus "[Save Always Upload File Data]"

    rc = SysFileDelete(auf_file)
    call lineout auf_file, "Jasmine ver."JasmineVersion" (Always Upload File Function)", 1
    do i = 1 to FtpSiteName.0
        if datatype(always_upload.i.0, "Number") = 1 then do
            call lineout auf_file, "#HOSTNAME:"FtpSiteName.i

            call lineout auf_file, "%"always_upload_style.i","always_upload_data.i

            do j = 1 to always_upload.i.0
                call lineout auf_file, always_upload.i.j
            end
        end
    end
    call lineout auf_file

    call SetStatus ">Remember always upload file name : "right(auf_file, length(auf_file) - length(JasmineDirectory) - 1)

    call ReadAlwaysUploadFileData

return

/*:VRX         UpdateDefaultDisabledFileData
*/
UpdateDefaultDisabledFileData:
if debug_mode = 1 then say "UpdateDefaultDisabledFileData"

    call SetStatus "[Save Default Disabled File Data]"

    rc = SysFileDelete(ddf_file)

    call lineout ddf_file, "Jasmine ver."JasmineVersion" (Default Disabled File Function)", 1

    do i = 1 to FtpSiteName.0
        if datatype(default_disabled.i.0, "Number") = 1 then do
            call lineout ddf_file, "#HOSTNAME:"FtpSiteName.i
            do j = 1 to default_disabled.i.0
                call lineout ddf_file, default_disabled.i.j
            end
        end
    end
    call lineout ddf_file

    call SetStatus ">Remember default disabled file name : "right(ddf_file, length(ddf_file) - length(JasmineDirectory) - 1)

    call ReadDefaultDisabledFileData

return

/*:VRX         UpdateFailedFileData
*/
UpdateFailedFileData:
if debug_mode = 1 then say "UpdateFailedFileData"

    call SetStatus "[Save Failed File Data]"

    failed_file.selected = ftp_host_name

    rc = SysFileDelete(rff_file)
    call lineout rff_file, "Jasmine ver."JasmineVersion" (Retry Failed File Function)", 1

    do i = 1 to FtpSiteName.0
        if datatype(failed_file.i.0, "Number") = 1 then do
            call lineout rff_file, "#HOSTNAME:"FtpSiteName.i
            do j = 1 to failed_file.i.0

if left(failed_file.i.j, 17) <> "TARGET_FILE_NAME." then do
                call lineout rff_file, failed_file.i.j
end
            end
        end
    end
    call lineout rff_file

    call SetStatus ">Retry failed file data file name : "right(rff_file, length(rff_file) - length(JasmineDirectory) - 1)

    call ReadFailedFileData

return

/*:VRX         UpdateTakeoutData
*/
UpdateTakeoutData:
if debug_mode = 1 then say "UpdateTakeoutData"

    call SetStatus "[Update TakeOut Data]"

    tko_host_name.selected = ftp_host_name

    if datatype(tko_host.selected.0) = "NUM" then do
        s = tko_host.selected.0

        /* Takeout用Dataファイル処理のStatus表示(Reset) */
        ok = VRSet( "DT_UploadStatus", "BackColor", "White" )
        ok = VRSet( "DT_UploadStatus", "Caption", "EDIT TKO" )
        call SetUploadSliderColor
        ok = VRSet( "SL_UploadStatus", "Percentile", 0 )

        do i = 1 to success_file.0

            /* Takeout用Dataファイル処理のStatus表示 */
            percent = (i * 100) % success_file.0
            ok = VRSet( "SL_UploadStatus", "Percentile", percent )

            sc = "New"
            do j = 1 to tko_host.selected.0
                if success_file.i = tko_host.selected.j then do
                    sc = "Update"
                    leave
                end
            end

            if sc = "New" then do
                s = s + 1
                tko_host.selected.s = success_file.i
            end
        end

        tko_host.selected.0 = s
    end
    else do
        tko_host_name.selected = ftp_host_name

        do i = 1 to success_file.0
            tko_host.selected.i = success_file.i
        end
        tko_host.selected.0 = success_file.0
    end

    /* Recreate */
    ok = VRSet( "DT_UploadStatus", "BackColor", "White" )
    ok = VRSet( "DT_UploadStatus", "Caption", "SAVE TKO" )
    call WriteTakeoutDataFile

    call ReadTakeoutData

    ok = VRSet( "DT_UploadStatus", "Caption", "" )

return

/*:VRX         UpdateTimerRunData
*/
UpdateTimerRunData: 
if debug_mode = 1 then say "UpdateTimerRunData"

    ok = VRMethod( "LB_TimerRun_List", "GetStringList", "TR_List." )

    rc = SysFileDelete(tr_file)
    call lineout tr_file, "Jasmine ver."JasmineVersion" (Timer Run Function)", 1
    
    do i = 1 to TR_List.0
        call lineout tr_file, TR_List.i
    end
    call lineout tr_file

    call ReadTimerRunData

return

/*:VRX         Upload
*/
Upload:
if debug_mode = 1 then say "Upload"

    parse arg hn

    dir_num_old = 0

    upload_cancel = "No"

    success_file.0    = 0
    total_file_size   = 0
    total_upload_time = 0
    upload_file_num   = 0
    success_num       = 0
    cancel_file_num   = 0
    failed_file_num   = 0

    do i = 1 to target_file_name.0
        set = VRGet( "IRB_CancelUpload", "Set" )
        if set = 1 then upload_cancel = "Yes"
        if upload_cancel = "Yes" then do
            ok = VRSet( "LB_Status",       "BackColor", color_attention )
            ok = VRSet( "DT_UploadStatus", "BackColor", color_attention )
            ok = VRSet( "DT_UploadStatus", "Caption", "CANCEL" )

            call SetStatus "##### CANCELED BY USER #####"

            /* Retrun Date and Time as last Date and Time */
            now_year  = last_year
            now_month = last_month
            now_day   = last_day
            now_hour  = last_hour
            now_min   = last_min

            ok = VRSet( "SPIN_LastYear",  "Index", now_year - 1967 )
            ok = VRSet( "SPIN_LastMonth", "Index", now_month )
            ok = VRSet( "SPIN_LastDay",   "Index", now_day )
            ok = VRSet( "SPIN_LastHour",  "Index", now_hour + 1 )
            ok = VRSet( "SPIN_LastMin",   "Index", now_min + 1 )

            LastDate.hn = now_month""now_day""now_year
            LastTime.hn = now_hour":"now_min

            leave
        end

        percent = (i * 100) % target_file_name.0
        ok = VRSet( "SL_UploadStatus", "Percentile", percent )

        if upload_status.i = "Enabled" then do
            /* Check Ignore File Extension */
            call UploadOneFile hn
        end
        else if upload_status.i = "Disabled" then do
            cancel_file_num = cancel_file_num + 1
            ok = VRSet( "LB_Status",       "BackColor", color_attention )
            ok = VRSet( "DT_UploadStatus", "BackColor", color_attention )
            ok = VRSet( "DT_UploadStatus", "Caption", "CANCEL" )

            status = right(i,length(target_file_name.0),"0")"/"right(target_file_name.0, length(target_file_name.0), "0")
            call SetStatus status":Canceled :"target_file_name.i
        end
    end

    /* Show Ignore file number if available */
    if ShowIgnoredFileList = "Enabled" then do
        if ignore_file_name.0 > 0 then do
            call SetStatus "[Ignore Upload]"

            do i = 1 to ignore_file_name.0

                ok = VRSet( "LB_Status",       "BackColor", color_attention )
                ok = VRSet( "DT_UploadStatus", "BackColor", color_attention )
                ok = VRSet( "DT_UploadStatus", "Caption",   "IGNORE" )

                status = right(i,length(ignore_file_name.0),"0")"/"right(ignore_file_name.0, length(ignore_file_name.0), "0")
                call SetStatus status":Ignored  :"ignore_file_name.i
            end
        end
    end

    if upload_cancel = "No" then do
        ok = VRSet( "LB_Status",       "BackColor", "White" )
        ok = VRSet( "DT_UploadStatus", "BackColor", "White" )
        ok = VRSet( "DT_UploadStatus", "Caption",   "" )
    end

return


/*:VRX         UploadOneFile
*/
UploadOneFile:
if debug_mode = 1 then say "UploadOneFile"

    parse arg hn

    upload_file_num = upload_file_num + 1

    dir_num = 0
    do j = 1 to length(target_file_name.i)
        check = substr(target_file_name.i, j, 1)
        if check = "\" then dir_num = dir_num + 1
    end

    dir_length = lastpos("\", target_file_name.i)
    if dir_length > 0 then do
        dir_name = left(target_file_name.i, dir_length - 1)
        upload_file_name = right(target_file_name.i, length(target_file_name.i) - length(dir_name"\"))
    end
    else do
        dir_name = "."
        upload_file_name = target_file_name.i
    end

    /* before upload */
    make_directory = "No"
    if dir_num > 0 then do
        call ChangeRemoteDirectory
    end

/* NEW FUNCTION SINCE 25.NOV.2000 */

    /* HTML Key Exchange Function */
    if (HtmlKeywordExchangeFunction = "Enabled") & ((translate(right(upload_file_name, 5)) = ".HTML") | (translate(right(upload_file_name, 4)) = ".HTM")) then do
        ok = VRSet( "DT_UploadStatus", "Caption", "EXCHANGE" )

        hke_temp_file_name = JasmineDirectory"\$JSMHKE$.TMP"
        status = right(i,length(target_file_name.0),"0")"/"right(target_file_name.0, length(target_file_name.0), "0")
        call SetStatus status":Exchange *"target_file_name.i

/*
        call HtmlKeywordExchange(ftp_local_directory"\"target_file_name.i"###"hke_temp_file_name)
*/
        rc = HtmlKeywordExchange(ftp_local_directory"\"target_file_name.i"###"hke_temp_file_name)

        local_file_name = hke_temp_file_name

        ok = VRMethod( "LB_Status", "Delete", count )
    end
    else do
        local_file_name = ftp_local_directory"\"target_file_name.i
    end
/* * * * * * * * * * * * * * * * * */

    if TransferMode = "ASCII" then do
        transfer = "ASCII"
        ok = VRSet( "DT_UploadStatus", "Caption", "ASCII" )
    end
    if TransferMode = "BINARY" then do
        transfer = "Binary"
        ok = VRSet( "DT_UploadStatus", "Caption", "BINARY" )
    end
    if TransferMode = "AUTO" then do
        tgt_lastpos = lastpos(".", target_file_name.i)
        tgt_ext = right(target_file_name.i, length(target_file_name.i) - tgt_lastpos)

        do m = 1 to AsciiExtension.0
            asc_lastpos = lastpos(".", AsciiExtension.m)
            asc_ext = right(AsciiExtension.m, length(AsciiExtension.m) - asc_lastpos)

            if translate(tgt_ext) = translate(asc_ext) then do
                transfer = "ASCII"
                ok = VRSet( "DT_UploadStatus", "Caption", "ASCII" )
                leave
            end
            else do
                transfer = "BINARY"
                ok = VRSet( "DT_UploadStatus", "Caption", "BINARY" )
            end
        end
    end

    status = right(i,length(target_file_name.0),"0")"/"right(target_file_name.0, length(target_file_name.0), "0")
    call SetStatus status":Upload   *"target_file_name.i

    upload_start_time = time(e)

    /* rename return code from `rc' to `ftpput_rc', 15.Jul.2001 */
    /*
    ftpput_rc = FtpPut(local_file_name, upload_file_name, transfer)
    */

    if ChangeUpperToLower = "Yes" then do
        ftpput_rc = FtpPut(local_file_name, ChangeFileNameUpperToLower(upload_file_name), transfer)
    end    
    else do
        ftpput_rc = FtpPut(local_file_name, upload_file_name, transfer)
    end

    upload_comp_time = time(e)
    upload_time = upload_comp_time - upload_start_time

/* NEW FUNCTION SINCE 25.NOV.2000 */
    /* HTML Key Exchange Function */
    if (HtmlKeywordExchangeFunction = "Enabled") & ((translate(right(upload_file_name, 5)) = ".HTML") | (translate(right(upload_file_name, 4)) = ".HTM")) then do
        rc = SysFileDelete(hke_temp_file_name)
    end
/* * * * * * * * * * * */

    ok = VRMethod( "LB_Status", "Delete", count )

    ok = VRSet( "LB_Status",       "BackColor", color_success )
    ok = VRSet( "DT_UploadStatus", "BackColor", color_success )
    ok = VRSet( "DT_UploadStatus", "Caption", "COMP" )

    status = right(i,length(target_file_name.0),"0")"/"right(target_file_name.0, length(target_file_name.0), "0")

/* FOR TEST OF RETRY FAILED FILE FUNCTION */
/* ftpput_rc = 1 */
/* * * * * * * * */

    if ftpput_rc = 0 then do
        ok = VRSet( "LB_Status", "BackColor", color_success )

        status_file_size = target_file_size.i"byte"
        total_file_size = total_file_size + target_file_size.i
        status_transfer_mode = transfer" mode"

        total_upload_time = total_upload_time + upload_time

        if StatusFileSize = "Enabled" then do
            if StatusTransferMode = "Enabled" then do
                status_option = "("status_file_size", "status_transfer_mode")"
            end
            else if StatusTransferMode = "Disabled" then do
                status_option = "("status_file_size")"
            end
        end
        else if StatusFileSize = "Disabled" then do
            if StatusTransferMode = "Enabled" then do
                status_option = "("status_transfer_mode")"
            end
            else if StatusTransferMode = "Disabled" then do
                status_option = ""
            end
        end

        call SetStatus status":Completed:"target_file_name.i" "status_option

        /* This stem is for Comparison with Takeout Data File */
        success_num = success_num + 1
        success_file.success_num = target_file_name.i
        success_file.0 = success_num
    end
    else do
        ok = VRSet( "LB_Status",       "BackColor", color_failed )
        ok = VRSet( "DT_UploadStatus", "BackColor", color_failed )
        ok = VRSet( "DT_UploadStatus", "Caption", "FAIL" )

        failed_file_num = failed_file_num + 1
        failed_file.hn.failed_file_num = target_file_name.i
        call SetStatus status":Failed   !"target_file_name.i" [FtpErrNo:"ftperrno"]"

        if FailedFileListWindow = "Disabled" then do
            FailedFileListWindow = "Enabled"
            ok = VRLoadSecondary( "SW_FailedFileList", )
        end

        position = VRMethod( "LB_FailedFileList", "AddString", ftp_host_name":"target_file_name.i,  )
    end

    if dir_num > 0 then do
        do j = 1 to dir_num
            rc = FtpChDir("..")
        end
    end

    dir_name_old = dir_name
    dir_num_old  = dir_num

return

/*:VRX         WriteFtpSiteInitialFile
*/
WriteFtpSiteInitialFile:
if debug_mode = 1 then say "WriteFtpSiteInitialFile"

    out_file = JasmineDirectory"\FtpSite.ini"

    rc = SysFileDelete(out_file)

    call lineout out_file, ";", 1
    call lineout out_file, "; FtpSite.ini - Jasmine FTP Site Initial File ("JasmineVersion")"
    call lineout out_file, ";"
    if FtpSiteName.0 > 0 then do
        do i = 1 to FtpSiteName.0
            call lineout out_file, "["FtpSiteName.i"]"
            call lineout out_file, "FtpSiteName="FtpSiteName.i
            call lineout out_file, "FtpSiteAddress="FtpSiteAddress.i
            call lineout out_file, "UserID="UserID.i
            call lineout out_file, "Password="Password.i
            call lineout out_file, "Mode="Mode.i
            call lineout out_file, "LocalDirectory="LocalDirectory.i
            call lineout out_file, "RemoteDirectory="RemoteDirectory.i
            call lineout out_file, "Account="Account.i
            call lineout out_file, "CloseCommand="CloseCommand.i
            call lineout out_file, "LastDate="LastDate.i
            call lineout out_file, "LastTime="LastTime.i
        end
    end

    call lineout out_file

return

/*:VRX         WriteInitialFile
*/
WriteInitialFile:
if debug_mode = 1 then say "WriteInitialFile"

    PosX = VRGet( "MW_Jasmine", "Left" )
    PosY = VRGet( "MW_Jasmine", "Top" )

    out_file = JasmineDirectory"\Jasmine.ini"

    rc = SysFileDelete(out_file)

    call lineout out_file, ";", 1
    call lineout out_file, "; Jasmine.ini - Jasmine Initial File ("JasmineVersion")"
    call lineout out_file, ";"
    call lineout out_file, "PosX="PosX
    call lineout out_file, "PosY="PosY

    call lineout out_file, "PreferencePosX="PreferencePosX
    call lineout out_file, "PreferencePosY="PreferencePosY

    call lineout out_file, "FailedFileListPosX="FailedFileListPosX 
    call lineout out_file, "FailedFileListPosY="FailedFileListPosY 

    call lineout out_file, "Font="Font
    call lineout out_file, "StatusFont="StatusFont

    call lineout out_file, "Logging="Logging
    call lineout out_file, "LoggingType="LoggingType
    call lineout out_file, "LogDirectory="LogDirectory
    call lineout out_file, "TransferMode="TransferMode
    call lineout out_file, "ManageUploadFiles="ManageUploadFiles
    call lineout out_file, "UploadFileCheck="UploadFileCheck
    call lineout out_file, "ChangeUpperToLower="ChangeUpperToLower

    call lineout out_file, "LogonRetry="LogonRetry
    call lineout out_file, "LogonRetryNum="LogonRetryNum
    call lineout out_file, "LogonRetryNumSelected="LogonRetryNumSelected

    call lineout out_file, "StatusTransferMode="StatusTransferMode
    call lineout out_file, "StatusFileSize="StatusFileSize
    call lineout out_file, "StatusUploadSummary="StatusUploadSummary

    call lineout out_file, "IgnoreFileExtensionMode="IgnoreFileExtensionMode
    call lineout out_file, "IgnoreFileExtensionList="IgnoreFileExtensionList
    call lineout out_file, "ShowIgnoredFileList="ShowIgnoredFileList

    call lineout out_file, "AsciiExtensionList="AsciiExtensionList

/*
/*  call lineout out_file, "OpenCommandMode="OpenCommandMode */
    call lineout out_file, "CloseCommandMode="CloseCommandMode
*/

    call lineout out_file, "SoundDirectory="SoundDirectory
    call lineout out_file, "SoundVolume="SoundVolume
    call lineout out_file, "Sound="Sound","SoundStart","SoundNoFile","SoundLogonSuccessfully","SoundLogonFailed","SoundSaveLog","SoundEnd
    call lineout out_file, "SoundRes="SoundStartRes","SoundNoFileRes","SoundLogonSuccessfullyRes","SoundLogonFailedRes","SoundSaveLogRes","SoundEndRes

    call lineout out_file, "RibbonColor="RibbonColor_all
    call lineout out_file, "ColorSet="ColorSet

    /* Silent Status Indication : Statusの表示を静にしたい時はここをEnabledにする */
    call lineout out_file, "SilentStatusIndication="SilentStatusIndication

/*
    /* Takeout */
    call lineout out_file, "Takeout="Takeout
*/
    call lineout out_file, "AutoTakeout="AutoTakeout

    /* Retry Failed File */
    call lineout out_file, "RetryFailedFile="RetryFailedFile

    /* RememberUploadStatus : Default Disabled File */
    call lineout out_file, "RememberUploadStatus="RememberUploadStatus

    /* Copy when there are no file at target directory (COPY MODE) */
    call lineout out_file, "CopyWhenNoTargetFile="CopyWhenNoTargetFile

    /* HTML Key Exchange Function */
    call lineout out_file, "HtmlKeywordExchangeFunction="HtmlKeywordExchangeFunction
    call lineout out_file, "HkeFileSizeStyle="HkeFileSizeStyle
    call lineout out_file, "HkeDateStyle="HkeDateStyle
    call lineout out_file, "HkeDateSeparator="HkeDateSeparator
    call lineout out_file, "HkeDateMonthIndication="HkeDateMonthIndication
    call lineout out_file, "HkeTimeStyle="HkeTimeStyle

    /* Sequential Run Mode */
    call lineout out_file, "SequentialRunMode="SequentialRunMode
    call lineout out_file, "DefaultRunMode="DefaultRunMode
    call lineout out_file, "DisableSoundDuringSequentialRunning="DisableSoundDuringSequentialRunning

    call lineout out_file, "LanguageMode="LanguageMode
    call lineout out_file, "Language="JasmineLanguage

    /* Timer Run */
    call lineout out_file, "TimerRun="TimerRun
    call lineout out_file, "TimerRunPosX="TimerRunPosX
    call lineout out_file, "TimerRunPosY="TimerRunPosY

    call lineout out_file, "CopyShadowToStartupFolder="CopyShadowToStartupFolder
    call lineout out_file, "StartMinimized="StartMinimized
    call lineout out_file, "RunAtStartup="RunAtStartup

    call lineout out_file, "ShowTimerCounter="ShowTimerCounter

/*
    call lineout out_file, "Registry="register_number
*/
    call lineout out_file, "Option="Option

    call lineout out_file

return

/*:VRX         WriteTakeoutDataFile
*/
WriteTakeoutDataFile:
if debug_mode = 1 then say "WriteTakeoutDataFile"

    call SetStatus "[Save TakeOut Data File]"

    rc = SysFileDelete(tko_file)
    call lineout tko_file, "Jasmine Takeout ver."JasmineVersion, 1
    do i = 1 to FtpSiteName.0
        /* Site追加直後にTakeout Dataを作成したときに落ちる問題を修正 (03.Jan.1998 2.70 edit 1) */
        if datatype(tko_host.i.0, "Number") = 1 then do
            call lineout tko_file, "#HOSTNAME:"tko_host_name.i
            do j = 1 to tko_host.i.0
                call lineout tko_file, tko_host.i.j
            end
        end
    end
    call lineout tko_file

    call SetStatus ">Takeout data file name : "right(tko_file, length(tko_file) - length(JasmineDirectory) - 1)

    call ReadTakeoutData

return

