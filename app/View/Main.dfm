object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 633
  ClientWidth = 838
  Caption = 'Controle Patrimonial Pat Web'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnBeforeShow = UniFormBeforeShow
  OnCreate = UniFormCreate
  TextHeight = 15
  object PageControlGeral: TUniPageControl
    AlignWithMargins = True
    Left = 250
    Top = 46
    Width = 588
    Height = 562
    Hint = ''
    Margins.Left = 0
    Margins.Top = 5
    Margins.Right = 0
    CreateOrder = 3
    ActivePage = UniTabSheet1
    Align = alClient
    TabOrder = 2
    ExplicitWidth = 584
    ExplicitHeight = 561
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Dashboard'
      Font.Color = 9865093
      ParentFont = False
      ShowMaskBeforeActivate = True
      ExplicitWidth = 576
      ExplicitHeight = 533
      object UniScrollBox1: TUniScrollBox
        Left = 0
        Top = 0
        Width = 580
        Height = 534
        Hint = ''
        Align = alClient
        TabOrder = 0
        ScrollDirection = sdVertical
        ExplicitWidth = 576
        ExplicitHeight = 533
        object dasboardhtml: TUniHTMLFrame
          Left = 0
          Top = 0
          Width = 578
          Height = 532
          Hint = ''
          Align = alClient
          ExplicitWidth = 574
          ExplicitHeight = 531
        end
      end
    end
  end
  object UniStatusBar1: TUniStatusBar
    Left = 0
    Top = 611
    Width = 838
    Hint = ''
    Panels = <>
    SizeGrip = False
    Align = alBottom
    ParentColor = False
    ExplicitTop = 610
    ExplicitWidth = 834
  end
  object PnlTop: TUniPanel
    Left = 0
    Top = 0
    Width = 838
    Height = 41
    Hint = ''
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alTop
    TabOrder = 0
    BorderStyle = ubsNone
    ShowCaption = False
    Caption = ''
    Color = clWhite
    LayoutConfig.Cls = 'tool-bar'
    LayoutConfig.BodyCls = 'tool-bar'
    LayoutConfig.Width = '100%'
    LayoutConfig.Margin = '0'
    ExplicitWidth = 834
    object UniLabel2: TUniLabel
      AlignWithMargins = True
      Left = 253
      Top = 6
      Width = 39
      Height = 32
      Hint = ''
      Margins.Top = 6
      CreateOrder = 2
      TextConversion = txtHTML
      AutoSize = False
      Caption = '<i class="fa fa-bars fa-2x" aria-hidden="true" ></i>'
      Align = alLeft
      ParentFont = False
      Font.Color = 3026478
      Font.Height = -15
      Font.Style = [fsBold]
      ParentColor = False
      Color = 3026478
      TabOrder = 3
      OnClick = UniLabel2Click
    end
    object lbEmpresaSelecionada: TUniLabel
      AlignWithMargins = True
      Left = 305
      Top = 10
      Width = 151
      Height = 20
      Hint = ''
      Margins.Left = 10
      Margins.Top = 10
      CreateOrder = 3
      Caption = 'lbEmpresaSelecionada'
      Align = alLeft
      ParentFont = False
      Font.Height = -15
      TabOrder = 5
    end
    object pnLogo: TUniPanel
      Left = 0
      Top = 0
      Width = 250
      Height = 41
      Hint = ''
      Align = alLeft
      TabOrder = 1
      BorderStyle = ubsNone
      Caption = ''
      Color = 33023
      object lbTitulo: TUniLabel
        AlignWithMargins = True
        Left = 47
        Top = 7
        Width = 159
        Height = 30
        Hint = ''
        Margins.Top = 7
        CreateOrder = 1
        Alignment = taCenter
        Caption = 'Patrim'#244'nio Web'
        Align = alClient
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Style = [fsBold]
        ParentColor = False
        Color = clSilver
        TabOrder = 2
        LayoutConfig.Cls = 'lbTitulo'
      end
      object Logo: TUniImage
        Left = 0
        Top = 0
        Width = 44
        Height = 41
        Hint = ''
        Margins.Left = 4
        Margins.Right = 0
        Stretch = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D494844520000002C0000
          00290806000001394EFB24000000C67A5458745261772070726F66696C652074
          7970652065786966000078DA6D50510EC32008FDF7143B82F0D0CA71ECDA25BB
          C18E3F14BAB4CD5EE20379E609A4FDF37EA5C7009324294BAB5A6B36888A72B7
          A465479F4C59264FF03334BAD6136B086C2558845F5B8DF7479D7E061EBA65E5
          64D4E2075AAF824AF8B79B117BC0E868E45B186918815DA030E83E56AEDA96F3
          08EB9EAF687ED2209B9BCE6DDFEFB2D8F6B662FF807907211B03D51BC03848E8
          26B0718635358B1D056A2CD030B385FCDBD381F4055D9359A45397A4E3000001
          83694343504943432070726F66696C650000789C7D913D48C3401CC55F534B45
          2A1DEC20E290A175B28B8A38962A16C142692BB4EA6072E917346948525C1C05
          D782831F8B550717675D1D5C0541F003C4D5C549D1454AFC5F526811E3C1713F
          DEDD7BDCBD0384769DA9E640025035CBC8A69262A1B82A065F11821F01C41096
          98A9A7738B79788EAF7BF8F87A17E759DEE7FE1CC34AC964804F244E30DDB088
          378867372D9DF33E7184552585F89C78D2A00B123F725D76F98D73C561816746
          8C7C769E38422C56FA58EE63563554E219E2A8A26A942F145C56386F7156EB4D
          D6BD277F61A8A4ADE4B84E731C292C218D0C44C868A2863A2CC469D5483191A5
          FDA4877FCCF167C82593AB06468E0534A04272FCE07FF0BB5BB33C3DE5268592
          40E0C5B63F62407017E8B46CFBFBD8B63B2780FF19B8D27AFE461B98FB24BDD5
          D3A24740781BB8B8EE69F21E70B9038C3EE9922139929FA6502E03EF67F44D45
          60E416185A737BEBEEE3F401C85357CB37C0C1213051A1EC758F770FF6F7F6EF
          996E7F3F6F2D72A5BDB6250400000D7669545874584D4C3A636F6D2E61646F62
          652E786D7000000000003C3F787061636B657420626567696E3D22EFBBBF2220
          69643D2257354D304D7043656869487A7265537A4E54637A6B633964223F3E0A
          3C783A786D706D65746120786D6C6E733A783D2261646F62653A6E733A6D6574
          612F2220783A786D70746B3D22584D5020436F726520342E342E302D45786976
          32223E0A203C7264663A52444620786D6C6E733A7264663D22687474703A2F2F
          7777772E77332E6F72672F313939392F30322F32322D7264662D73796E746178
          2D6E7323223E0A20203C7264663A4465736372697074696F6E207264663A6162
          6F75743D22220A20202020786D6C6E733A786D704D4D3D22687474703A2F2F6E
          732E61646F62652E636F6D2F7861702F312E302F6D6D2F220A20202020786D6C
          6E733A73744576743D22687474703A2F2F6E732E61646F62652E636F6D2F7861
          702F312E302F73547970652F5265736F757263654576656E7423220A20202020
          786D6C6E733A64633D22687474703A2F2F7075726C2E6F72672F64632F656C65
          6D656E74732F312E312F220A20202020786D6C6E733A47494D503D2268747470
          3A2F2F7777772E67696D702E6F72672F786D702F220A20202020786D6C6E733A
          746966663D22687474703A2F2F6E732E61646F62652E636F6D2F746966662F31
          2E302F220A20202020786D6C6E733A786D703D22687474703A2F2F6E732E6164
          6F62652E636F6D2F7861702F312E302F220A202020786D704D4D3A446F63756D
          656E7449443D2267696D703A646F6369643A67696D703A61616339626231642D
          363264342D343734662D626265332D633566623532323262333265220A202020
          786D704D4D3A496E7374616E636549443D22786D702E6969643A376234313235
          33662D333962372D343663642D393231332D366366633261643633376238220A
          202020786D704D4D3A4F726967696E616C446F63756D656E7449443D22786D70
          2E6469643A64656230393736632D666561372D343033302D626338392D616437
          343662313565663065220A20202064633A466F726D61743D22696D6167652F70
          6E67220A20202047494D503A4150493D22322E30220A20202047494D503A506C
          6174666F726D3D2257696E646F7773220A20202047494D503A54696D65537461
          6D703D2231373031353833313930353834313834220A20202047494D503A5665
          7273696F6E3D22322E31302E3336220A202020746966663A4F7269656E746174
          696F6E3D2231220A202020786D703A43726561746F72546F6F6C3D2247494D50
          20322E3130220A202020786D703A4D65746164617461446174653D2232303233
          3A31323A30335430323A35393A34392D30333A3030220A202020786D703A4D6F
          64696679446174653D22323032333A31323A30335430323A35393A34392D3033
          3A3030223E0A2020203C786D704D4D3A486973746F72793E0A202020203C7264
          663A5365713E0A20202020203C7264663A6C690A20202020202073744576743A
          616374696F6E3D227361766564220A20202020202073744576743A6368616E67
          65643D222F220A20202020202073744576743A696E7374616E636549443D2278
          6D702E6969643A61613064393062392D313062352D343335362D396461372D31
          3432326136636138663665220A20202020202073744576743A736F6674776172
          654167656E743D2247696D7020322E3130202857696E646F777329220A202020
          20202073744576743A7768656E3D22323032332D31322D30335430323A35393A
          3530222F3E0A202020203C2F7264663A5365713E0A2020203C2F786D704D4D3A
          486973746F72793E0A20203C2F7264663A4465736372697074696F6E3E0A203C
          2F7264663A5244463E0A3C2F783A786D706D6574613E0A202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020200A20202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          0A20202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020200A2020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020200A202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020200A20202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020200A2020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020200A202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020200A20
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020200A20202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020200A2020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020200A202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020200A20202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020200A2020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020200A202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          200A202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020200A20202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020200A2020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020200A202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020200A20202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020200A2020202020
          202020202020202020202020202020202020202020200A3C3F787061636B6574
          20656E643D2277223F3E5889C9040000000467414D410000B18F0BFC61050000
          0006624B474400FF00FF00FFA0BDA793000000097048597300002E2300002E23
          0178A53F760000000774494D4507E70C03053B32E27EBF260000095149444154
          78DAE558093896E91ABE25264B64DF4B45498826EAD8DA15652422CA568DA384
          42A152D38CB2B44C4A4D9142533A28242D8E1251EA0F45D3293195A645890823
          2DCEF7BE8EDFEE67E8EA5CE7DCD7F55FFFF72EDFFDDEDFF33DDFF33CEFCB05A0
          095D808B0C1C3F168DF88453484A3E83C2825BD0D09AD43CC0CABD86B2C652CC
          68DA0591A9B75BEF20032987BF83808E1B7C9CB7B40E908B492A8361E6EA037F
          B76DED07BA5CBCCBCEBA9A2ACCB336C516AFCD983ECB085CC673E73439785B83
          879787AA29F9E600B89C1CED9B14069FC334ED616071D96186C6EC56798A752B
          2131F30E87853A766EF4F3C5B6C0A0EEA51EFA653FC4C70BB10788188216F3B4
          9B9C979707575757C4C5C5C1D3D31306060690969646515111D2D3D3919B9BDB
          59C6E615E298CE3CD14DE689088CB5E7D137D2ADE6A60F0DA8A9A981B09824E7
          07EC0E5D4EBE57781BAA1A9ADD4FCEC9CA808C8C0C4629AB60D3722904449653
          39C49BAC6C9674663E9575AC9DD90886E93256E019D23AF952DA05DCB8C9C258
          43C54E93C98BBF9896864D9B7F689E1C1414043333336A53393939A8A9A94158
          5818A5A5A5E0E1E1C1F0E1C35B9973B2AED001F9C640DA49BCE636AB08C38609
          6199C50AE45CBB86359EDEAD9AEB1947CC8DD5664FBE91C5C2E95FCF766F3AC6
          27B1DC3017E54AFED8BBFD10AEA4A4B31FAE4B3B1715E441595909AB56BBE348
          54F400BFC181004762CF351E080EDC06EFF5BE08DD17868A97CF719D716DD305
          0BFB46FCA6FC39C4A464D96D9B159630B79D0FEEC1DC6C27883D5F89554165EC
          39776FE7434D732267C59B36F8426BEEF84E2ADA7A570BC8D77C279F850913B5
          FB6FE3ACAC2C181A1AF6DE14363636888D8DC5E4C993E9F5A3478F202525053E
          3E3E9C3871022C160B0B162C80ADAD2DACACACE83DA44DFA030303616F6FDFB3
          E2B24725F073D144D80625F8863E45908702EDBFCCE545FFE3A21261E5688E84
          98643C7BF0125A9A9AF4C57234C5023353D8585B2339DA05FB19F2A2923FA1AE
          C447895FBFAC8084B4388E87C7319F500A4AEEDF83928A2A67AF688B8BE7CF42
          5C540CDF4EFE5BBBFEED013FC1C3CD1502C2A2BDB3F140E27F98B8E2E533AC70
          7641D29994812126A95958580863C6A9D15C6AB7C416B6760EB4F6E835B1E542
          73582DB28496962694468FC69994B3305B6849C70E069BC3C527915EFBF9ACC3
          3A2F2FE6C626E4E717E0F1E3C7F8DE6555CF8AC31955CE2B5DD9ED9D910118A9
          3C02226F6E414B34137FBC6A84937F316EDDFFC89E93919E46EB941E89892DA3
          528F52B2B668216E8BDF4AEB1195AD87DB77EEE0565E7ECFC41F1BEA60B56231
          96385B7124DE11FD1C532D8F608EC9FCEE6DBC67F74EE8E9EAD24EED29BAECAC
          DD1331099949A7E2690E7EF1E205F352ED515B5BD73BAFE888D9B367332F570B
          212121BDF78A8C8C0C9ADCF5F4F4683540426372723264656569D5D5D8D8487F
          C5C5C598366D1ABD261EE1E6E6462BB4964AA113B18787071D8C8F8FA7313934
          3494C65B1D1D1D3A5E5E5E8EAAAA2AA8A8A8404C4C0C0D0D0DA8ABAB83BCBC3C
          25AFAEAEEE4C7C24E210D4D5D5D936BE7C480995D59F202ACC4D279D66C9425E
          67261D7FFAF8191414E568A97D2135852E42484376EE42DA3FD3BBB671F2E904
          FA5154656AE203E3AA3C839BFB0F678CC0A819CD1F4B7D6D3DF805F961616847
          EBB6B6954AB7EE461015198117051B31595D088F9F374251961789FF515C5951
          05517111943E7884F05D51C867E562A2F694DE1137D4D560888010CACEA923F5
          6A2516CF95602B4E38960C739BF9B09AE188FBBF154265BC0667AF688BEA37AF
          68957C214C1997596F21315217F7AB84A031490D1E763E888B3D8ED715157075
          F3E81B3101B19FB9E5222692B50F952F9E3E41544C0CFC36FAF7CE8FBB02C96F
          6B3DDC199F7D0F2121215CC9CC6402CE1C70C2D7CF20FF35C45F0AFFBF82179A
          2F60AA6A3F684ED060EAFD1B909692A4C19684A4C0E010E4DEB8F9F504BBAF5E
          051363634CD0506FDE73DFBD8BC4A433D8B2F5C72EE7C71C8DC4AC9933212929
          81872525547C3253F5702A4CFA2C98EC108F4484A38209344F9E94A1FCF52B3C
          7C58828453A7919D73ADDDDC6FF534B1D0D614CAAAA321FEB68026DD7BBFD7E3
          78EA2B1C4878DB89DBC1DE0EFA4CE256521AC52409718C18AE80CF9F3F434442
          BA7F16CEC9CC00EF37BC4CA6D2A3ED59A6D3304655098A4AC321AB20033EFECE
          89A3AB2A81E0E3A7263C7DD988DFFF788FC2E21AB0EE35E0FCB55A3A56575D89
          F0C39158EBB5AE7F8297393A209249B1E2D2B2B073B586C12C5D8EAFAD3BC11D
          919255057BFF27381C7E10A6F34C2025379CE33D3D0A26620D0DF4E90715179F
          8035EBBD119D7270C0042FF629C6C5DC7A5A7C4B494A2291A98AD2D32F2125F5
          DC5FB77047387B394270A8408F73EA9E3D84E09FB738307163D7AFAFFBB274CF
          82C909D1D2A54BC1C5C585AD5BB7C2CECE0E83060D627604F9747B4D40B6DB64
          3BFDEEDD3B141414D0D22D383818314CE226FD111111B4EC3366228A88880804
          0505E1E2C2EC8B9292E87F4040000E1C38404FA2C8C91EE125EB9D3C79123E3E
          3E7D174C16BA7EFD3AF8F9F9A1ADDD7C0A51585848490948715B5656860F1F3E
          D0458C8C8CA860B2584E4E0E8DC3643E397E8C8A8A82858505121212E0E4E444
          8B5D777777F8FBFB53C1A41026D188440A090909E8EBEB0F8C4B7C6DF428D867
          9D1753CDEBC050DF008F986D0029C27FF153602A4E313AFEAAB211E7B3DFC2E1
          BBF6C7AA6DEBE716E45CCEA5E1909C6FB4B477FFB09F5ED75557D16D491EE36E
          59D93938DAE190AFCF160EDC16006FCF35D09F3A9D1E933E481C0F49511E3AE6
          B7F731FC9D15D1361C7714FCE9E327FCFCD37E786F75A7EDF70D8DB0355A4EAF
          F7EDF919CB9739825F48A4FF166E8BAB572ED1ADBA8C82226D1FF493C318457E
          C67F3F6363D813EC58AB488908E1C9ABC210506ADD30249F4C85F14223F0F2F2
          D0CD4554D809DABFF2EFCED8BF2F1441213BB061D3E681154C702CFA28ACAD16
          61BD8F2FF6EC0DC392B98208583D92D94A71C17B771942D62860A80037DBC2C4
          B2917B6360ED64013E013E9CF9C739C44624502EB23736313186CB4AD74EE7BC
          0326B80524D0AB8D57C5A188C3F43C9BC0447708B8B9B9A0397628EAF9B4989F
          3CD2522E619CFA589C8DBBC8BE37ED7C2A66CF9AD9EE0CBF2FE85794D8E0EB03
          17E7EF2123238D7FDD7F80ECEC6CC43142AE6466D17127077B18CF9D83295326
          438189D17979F9F871DB767A02F45731E061CDDB732D5455C7A1F65D2DF29964
          121573ACFFA45F52F097C6BF014B93F6E0548D27B80000000049454E44AE4260
          82}
        Proportional = True
        Align = alLeft
      end
    end
    object UniLabel1: TUniLabel
      AlignWithMargins = True
      Left = 732
      Top = 3
      Width = 46
      Height = 35
      Hint = ''
      Visible = False
      Alignment = taCenter
      TextConversion = txtHTML
      AutoSize = False
      Caption = '<i class="fa fa-user-circle fa-2x" aria-hidden="true" ></i>'
      Align = alRight
      ParentFont = False
      Font.Color = 3026478
      Font.Height = -15
      Font.Style = [fsBold]
      ParentColor = False
      Color = 2236962
      TabOrder = 2
      ExplicitLeft = 728
    end
    object UniLabel3: TUniLabel
      AlignWithMargins = True
      Left = 784
      Top = 10
      Width = 51
      Height = 28
      Hint = ''
      Margins.Top = 10
      Alignment = taCenter
      TextConversion = txtHTML
      AutoSize = False
      Caption = '<i class="fa fa-power-off fa-2x" aria-hidden="true"></i>'
      Align = alRight
      ParentFont = False
      Font.Color = 3026478
      Font.Height = -15
      Font.Style = [fsBold]
      ParentColor = False
      Color = 2236962
      TabOrder = 4
      OnClick = UniLabel3Click
      ExplicitLeft = 780
    end
  end
  object Menu: TUniTreeMenu
    Left = 0
    Top = 41
    Width = 250
    Height = 570
    Hint = ''
    ShowHint = True
    ParentShowHint = False
    BodyRTL = False
    Items.FontData = {0100000000}
    SourceMenu = UniMenuItems1
    Color = 2302755
    SingleExpand = True
    ExpanderOnly = False
    ExplicitHeight = 569
  end
  object UniMenuItems1: TUniMenuItems
    Images = UniNativeImageList1
    Left = 277
    Top = 177
    object Arquivo1: TUniMenuItem
      Caption = 'Arquivo'
      ImageIndex = 16
      HideOnClick = False
      object Empresausuria1: TUniMenuItem
        Caption = 'Empresa usu'#225'ria'
        ImageIndex = 26
        OnClick = Empresausuria1Click
      end
      object Cidades1: TUniMenuItem
        Caption = 'Cidades'
        ImageIndex = 25
        OnClick = Cidades1Click
      end
    end
    object Cadastro1: TUniMenuItem
      Caption = 'Cadastro'
      ImageIndex = 17
      object Pessoas1: TUniMenuItem
        Caption = 'Pessoas'
        ImageIndex = 18
        OnClick = Pessoas1Click
      end
      object Fornecedores1: TUniMenuItem
        Caption = 'Fornecedores'
        ImageIndex = 27
        OnClick = Fornecedores1Click
      end
      object Unidadeadministrativa1: TUniMenuItem
        Caption = 'Unidade administrativa'
        ImageIndex = 19
        OnClick = Unidadeadministrativa1Click
      end
      object Centrodecusto1: TUniMenuItem
        Caption = 'Centro de custo'
        ImageIndex = 9
        OnClick = Centrodecusto1Click
      end
      object Categorias1: TUniMenuItem
        Caption = 'Categorias'
        ImageIndex = 11
        OnClick = Categorias1Click
      end
      object Grupos1: TUniMenuItem
        Caption = 'Grupos'
        ImageIndex = 21
        OnClick = Grupos1Click
      end
      object Setores1: TUniMenuItem
        Caption = 'Setores'
        ImageIndex = 28
        OnClick = Setores1Click
      end
      object Motivosdetransferncia1: TUniMenuItem
        Caption = 'Motivos de transfer'#234'ncia'
        ImageIndex = 16
        OnClick = Motivosdetransferncia1Click
      end
      object Patrimnio1: TUniMenuItem
        Caption = 'Patrim'#244'nio'
        ImageIndex = 29
        OnClick = Patrimnio1Click
      end
    end
    object Relatrios1: TUniMenuItem
      Caption = 'Relat'#243'rios'
      ImageIndex = 24
      object Relaogeraldebens1: TUniMenuItem
        Caption = 'Rela'#231#227'o geral de bens'
        ImageIndex = 24
        OnClick = Relaogeraldebens1Click
      end
    end
    object Responsive1: TUniMenuItem
      Caption = 'Usu'#225'rios'
      ImageIndex = 30
      OnClick = Responsive1Click
    end
    object Sair1: TUniMenuItem
      Caption = 'Sair'
      ImageIndex = 31
      OnClick = Sair1Click
    end
  end
  object UniNativeImageList1: TUniNativeImageList
    Left = 296
    Top = 72
    Images = {
      20000000FFFFFF1F060C0000006E617669636F6E3B66615F3BFFFFFF1F060B00
      00006465736B746F703B66613BFFFFFF1F060C000000656E76656C6F70653B66
      613BFFFFFF1F0608000000757365723B66613BFFFFFF1F060E0000006C696E65
      2D63686172743B66613BFFFFFF1F061000000077696E646F772D636C6F73653B
      66613BFFFFFF1F0608000000736176653B66613BFFFFFF1F0608000000656469
      743B66613BFFFFFF1F06070000006375743B66613BFFFFFF1F060D0000006261
      722D63686172743B66613BFFFFFF1F060D0000007069652D63686172743B6661
      3BFFFFFF1F060C000000626F6F6B6D61726B3B66613BFFFFFF1F060C00000063
      616C656E6461723B66613BFFFFFF1F0608000000666565643B66613BFFFFFF1F
      06070000006661783B66613BFFFFFF1F06070000006164643B66613BFFFFFF1F
      0609000000696E626F783B66613BFFFFFF1F061400000066612066612D627269
      6566636173653B66615F3BFFFFFF1F060E00000066612066612D757365723B66
      613BFFFFFF1F061300000066612066612D6275696C64696E673B66615F3BFFFF
      FF1F061000000066612066612D6D6F6E65793B66615F3BFFFFFF1F0617000000
      66612066612D6F626A6563742D67726F75703B66615F3BFFFFFF1F060F000000
      66612D617263686976653B66615F3BFFFFFF1F061400000066612066612D6669
      6C652D746578743B66615F3BFFFFFF1F061000000066612066612D7072696E74
      3B66615F3BFFFFFF1F061500000066612066612D6D61702D6D61726B65723B66
      615F3BFFFFFF1F061200000066612066612D69642D636172643B66615F3BFFFF
      FF1F061200000066612066612D69642D62616467653B66613BFFFFFF1F061100
      000066612066612D736974656D61703B66613BFFFFFF1F061100000066612066
      612D7172636F64653B66615F3BFFFFFF1F061000000066612066612D75736572
      733B66615F3BFFFFFF1F061400000066612066612D706F7765722D6F66663B66
      615F3B}
  end
  object UniScreenMask1: TUniScreenMask
    Enabled = False
    DisplayMessage = 'Aguarde Ajustes de Seguran'#231'a'
    Left = 344
    Top = 192
  end
  object TimerResize: TUniTimer
    ClientEvent.Strings = (
      'function(sender)'
      '{'
      ' '
      '}')
    OnTimer = TimerResizeTimer
    Left = 488
    Top = 176
  end
  object TimerSessao: TUniTimer
    Interval = 540000
    ClientEvent.Strings = (
      'function(sender)'
      '{'
      ' '
      '}')
    Left = 648
    Top = 423
  end
end
