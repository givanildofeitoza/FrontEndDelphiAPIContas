object _FrmValores: T_FrmValores
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 302
  ClientWidth = 421
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 122
    Width = 57
    Height = 14
    Caption = 'Descri'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 154
    Width = 33
    Height = 14
    Caption = 'Data:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 184
    Width = 63
    Height = 14
    Caption = 'Categoria:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 24
    Top = 211
    Width = 35
    Height = 14
    Caption = 'Valor:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object TxtDesc: TEdit
    Left = 104
    Top = 119
    Width = 258
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object CboCategoria: TComboBox
    Left = 104
    Top = 177
    Width = 186
    Height = 22
    Style = csDropDownList
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemIndex = 0
    ParentFont = False
    TabOrder = 1
    Text = 'lazer'
    Items.Strings = (
      'lazer'
      'esportes'
      'saude'
      'alimentacao'
      'pets'
      'casa'
      'locomocao'
      'investimento'
      'restaurante'
      'familia'
      'educacao'
      'trabalho')
  end
  object TxtValor: TCurrencyEdit
    Left = 104
    Top = 209
    Width = 121
    Height = 22
    Margins.Left = 1
    Margins.Top = 1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object TxtData: TDateEdit
    Left = 104
    Top = 147
    Width = 186
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 3
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 421
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    Color = 8279835
    ParentBackground = False
    TabOrder = 4
    object Image5: TImage
      Left = 0
      Top = 0
      Width = 89
      Height = 65
      Cursor = crHandPoint
      Align = alLeft
      Center = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000520000
        005008060000008AE4229000000A376943435073524742204945433631393636
        2D322E310000789C9D96775453D91687CFBD37BD5092108A94D06B685202480D
        BD48912E2A3109104AC090002236445470445191A6083228E080A34391B1228A
        850151B1EB041944D47170141B964964AD19DFBC79EFCD9BDF1FF77E6B9FBDCF
        DD67EF7DD6BA0090FC8305C24C5809800CA15814E1E7C5888D8B676007010CF0
        00036C00E070B3B34216F8460299027CD88C6C9913F817BDBA0E20F9FB2AD33F
        8CC100FF9F94B95922310050988CE7F2F8D95C1917C9383D579C25B74FC998B6
        344DCE304ACE22598232569373F22C5B7CF699650F39F332843C19CB73CEE265
        F0E4DC27E38D3912BE8C91601917E708F8B932BE26638374498640C66FE4B119
        7C4E36002892DC2EE67353646C2D63922832822DE37900E048C95FF0D22F58CC
        CF13CB0FC5CECC5A2E1224A78819265C53868D93138BE1CFCF4DE78BC5CC300E
        378D23E231D89919591CE1720066CFFC5914796D19B2223BD8383938306D2D6D
        BE28D47F5DFC9B92F776965E847FEE19441FF8C3F6577E990D00B0A665B5D9FA
        876D6915005DEB0150BBFD87CD602F008AB2BE750E7D711EBA7C5E52C4E22C67
        2BABDCDC5C4B019F6B292FE8EFFA9F0E7F435F7CCF52BEDDEFE56178F3933892
        7431435E376E667AA644C4C8CEE270F90CE69F87F81F07FE751E1611FC24BE88
        2F944544CBA64C204C96B55BC813880599428640F89F9AF80FC3FEA4D9B99689
        DAF811D0965802A5211A407E1E00282A1120097B642BD0EF7D0BC64703F9CD8B
        D199989DFBCF82FE7D57B84CFEC816247F8E63474432B81251CEEC9AFC5A0234
        2000454003EA401BE80313C004B6C011B8000FE0030241288804716031E08214
        90014420171480B5A0189482AD6027A80675A0113483367018748163E0343807
        2E81CB6004DC0152300E9E8029F00ACC40108485C810155287742043C81CB285
        58901BE403054311501C940825434248021540EBA052A81CAA86EAA166E85BE8
        28741ABA000D43B7A0516812FA157A07233009A6C15AB0116C05B3604F38088E
        8417C1C9F032381F2E82B7C09570037C10EE844FC397E011580A3F81A7118010
        113AA28B301116C24642917824091121AB9012A4026940DA901EA41FB98A4891
        A7C85B1406454531504C940BCA1F1585E2A296A156A136A3AA5107509DA83ED4
        55D4286A0AF5114D466BA2CDD1CEE800742C3A199D8B2E4657A09BD01DE8B3E8
        11F438FA150683A1638C318E187F4C1C2615B302B319B31BD38E398519C68C61
        A6B158AC3AD61CEB8A0DC572B0626C31B60A7B107B127B053B8E7D8323E27470
        B6385F5C3C4E882BC455E05A702770577013B819BC12DE10EF8C0FC5F3F0CBF1
        65F8467C0F7E083F8E9F2128138C09AE8448422A612DA192D046384BB84B7841
        2412F5884EC470A280B88658493C443C4F1C25BE255148662436298124216D21
        ED279D22DD22BD2093C946640F723C594CDE426E269F21DF27BF51A02A582A04
        28F014562BD428742A5C5178A688573454F4545CAC98AF58A178447148F1A912
        5EC94889ADC4515AA554A37454E986D2B43255D9463954394379B3728BF205E5
        47142CC588E243E1518A28FB286728635484AA4F6553B9D475D446EA59EA380D
        4333A605D05269A5B46F6883B429158A8A9D4AB44A9E4A8DCA7115291DA11BD1
        03E8E9F432FA61FA75FA3B552D554F55BEEA26D536D52BAAAFD5E6A879A8F1D5
        4AD4DAD546D4DEA933D47DD4D3D4B7A977A9DFD340699869846BE46AECD138AB
        F1740E6D8ECB1CEE9C923987E7DCD68435CD3423345768EED31CD09CD6D2D6F2
        D3CAD2AAD23AA3F5549BAEEDA19DAABD43FB84F6A40E55C74D47A0B343E7A4CE
        63860AC39391CEA864F431A6743575FD7525BAF5BA83BA337AC67A517A857AED
        7AF7F409FA2CFD24FD1DFABDFA53063A0621060506AD06B70DF1862CC314C35D
        86FD86AF8D8C8D628C361875193D3256330E30CE376E35BE6B423671375966D2
        6072CD1463CA324D33DD6D7AD90C36B3374B31AB311B3287CD1DCC05E6BBCD87
        2DD0164E16428B068B1B4C12D39399C36C658E5AD22D832D0B2DBB2C9F591958
        C55B6DB3EAB7FA686D6F9D6EDD687DC7866213685368D363F3ABAD992DD7B6C6
        F6DA5CF25CDFB9ABE776CF7D6E676EC7B7DB6377D39E6A1F62BFC1BED7FE8383
        A383C8A1CD61D2D1C031D1B1D6F1068BC60A636D669D77423B7939AD763AE6F4
        D6D9C159EC7CD8F91717A64B9A4B8BCBA379C6F3F8F31AE78DB9EAB9725CEB5D
        A56E0CB744B7BD6E52775D778E7B83FB030F7D0F9E4793C784A7A967AAE741CF
        675ED65E22AF0EAFD76C67F64AF6296FC4DBCFBBC47BD087E213E553ED73DF57
        CF37D9B7D577CACFDE6F85DF297FB47F90FF36FF1B015A01DC80E680A940C7C0
        95817D41A4A00541D5410F82CD8245C13D21704860C8F690BBF30DE70BE77785
        82D080D0EDA1F7C28CC396857D1F8E090F0BAF097F1861135110D1BF80BA60C9
        829605AF22BD22CB22EF44994449A27AA315A313A29BA35FC778C794C74863AD
        6257C65E8AD38813C475C763E3A3E39BE2A717FA2CDCB9703CC13EA138E1FA22
        E345798B2E2CD6589CBEF8F812C5259C254712D18931892D89EF39A19C06CEF4
        D280A5B54BA7B86CEE2EEE139E076F076F92EFCA2FE74F24B92695273D4A764D
        DE9E3C99E29E5291F254C016540B9EA7FAA7D6A5BE4E0B4DDB9FF6293D26BD3D
        0397919871544811A609FB32B533F33287B3CCB38AB3A4CB9C97ED5C36250A12
        356543D98BB2BBC534D9CFD480C444B25E329AE3965393F326373AF7489E729E
        306F60B9D9F24DCB27F27DF3BF5E815AC15DD15BA05BB0B66074A5E7CAFA55D0
        AAA5AB7A57EBAF2E5A3DBEC66FCD81B584B5696B7F28B42E2C2F7CB92E665D4F
        9156D19AA2B1F57EEB5B8B158A45C53736B86CA8DB88DA28D838B869EEA6AA4D
        1F4B7825174BAD4B2B4ADF6FE66EBEF895CD57955F7DDA92B465B0CCA16CCF56
        CC56E1D6EBDBDCB71D28572ECF2F1FDB1EB2BD73076347C98E973B97ECBC5061
        5751B78BB04BB24B5A195CD95D6550B5B5EA7D754AF5488D574D7BAD66EDA6DA
        D7BB79BBAFECF1D8D356A755575AF76EAF60EFCD7ABFFACE06A3868A7D987D39
        FB1E364637F67FCDFABAB949A3A9B4E9C37EE17EE98188037DCD8ECDCD2D9A2D
        65AD70ABA475F260C2C1CBDF787FD3DDC66CAB6FA7B7971E028724871E7F9BF8
        EDF5C341877B8FB08EB47D67F85D6D07B5A3A413EA5CDE39D595D225ED8EEB1E
        3E1A78B4B7C7A5A7E37BCBEFF71FD33D56735CE578D909C289A2139F4EE69F9C
        3E9575EAE9E9E4D363BD4B7AEF9C893D73AD2FBC6FF06CD0D9F3E77CCF9DE9F7
        EC3F79DEF5FCB10BCE178E5E645DECBAE470A973C07EA0E307FB1F3A061D063B
        871C87BA2F3B5DEE199E377CE28AFB95D357BDAF9EBB1670EDD2C8FC91E1EB51
        D76FDE48B821BDC9BBF9E856FAADE7B7736ECFDC5973177DB7E49ED2BD8AFB9A
        F71B7E34FDB15DEA203D3EEA3D3AF060C1833B63DCB1273F65FFF47EBCE821F9
        61C584CE44F323DB47C7267D272F3F5EF878FC49D69399A7C53F2BFF5CFBCCE4
        D977BF78FC3230153B35FE5CF4FCD3AF9B5FA8BFD8FFD2EE65EF74D8F4FD5719
        AF665E97BC517F73E02DEB6DFFBB98771333B9EFB1EF2B3F987EE8F918F4F1EE
        A78C4F9F7E03F784F3FB8F70662A00000009704859730001CD5E0001CD5E01B8
        72935A0000088C4944415478DAED9D0B58CE571CC7BF6FA552A126E69259EE19
        DA8AB935494C3DE4BA84CC36E4324B6B92656E0D4B3DC6B29415A530630C25C2
        9A86B67299D0966B61144A12DD533BE7CFFB573C6FBC6FE7FFBEB5E77C9EC7F3
        9CF37FFFEFF9FF7FDFF75C7EE7777E9E64662E8BCB2B813C7054460618CB5ABB
        2CCE21E5A69A7E99FA8D2C970BC9042E2423B8908CE04232820BC9082E2423B8
        908CE04232820BC9082E2423B8908CE04232820BC9082E2423B8908CA88342EA
        686BE38DE6C6E49F099A35314243FD06D06BA083B2F2C7C8795080AB9939B874
        331B8F2B2A34FDAA55A823421A1B35C4C87EDDE1D0AB0B7A766A037DDD0635DE
        5F58528AC4D40C1C3A7D11B1C9FFE06161B1265F1F1A17B29569137C36E23D38
        DB5ABE543C455051771E3D8B757B8F23F3DE034D98018D094987EA9CD1033063
        783FA1AC88E2B272A1B7959757C0C8400F8D1AEA29BCB784DC1B129388B5BB8F
        0AD3807AD18090ED5B99E207CF71E86CD6FC85CFD26EDCC1A153179174E11A2E
        FE7B17D9798FAA7DDED8401FDDCC5BA25F577338F57D0BED5ABEF8DAE733B230
        F3BB1DB871F7FEFF57489BEEED10E6E902A3E77AD6FE136908893E8E94ABB794
        6ACFBA631BCC1E698321D69DAB5DCF2B2882DBB7DB9194764D1D6641AD420EB4
        EC808D5E13A0ABA32D5EBB78F32EE687C5E0F4A57F6BD53615D47FBA53B55E5E
        4A86F7D455DB9070F68AD4A6416D425AB66F8D9F177D8C867ACF1694ED0967F0
        5578AC30B7B180CEB5CB3F1986F176EF88D78A4ACA30D637820CF74C29CD835A
        843425BEE001BF196861D248BCB666570256EF4C90E4799E6307E28B0F068AF5
        AC7BF918EAB31EF71F164A6522D42264C4BC89186CD549AC074727C26FDB6109
        8D02164C1C82594EFDC53AF535E902241D120BE9D0CB02615FB888F52364BEFA
        C87F2B2A2B2B25348A98259361F3979360DBA3BD786D0A992F0F13075EA2274A
        27243526E1DBCF441725EF5111ECBCD6916DDEA35AB6FC6ABC4EA692DF56CD16
        5C26CAE55BD918EC1D820A49B696120AE9F8AE05423D9FF5C6A55171D8782049
        A936E88FE037CD4928FB6C88417AD63DA5BE3FD5B10F964E7610EBB3027FC6BE
        A4BF599B0A4985A4438BBA3C94DBF71FC2C62350E9153A70F6188CB1E921947F
        397E0E1EEB7E51EAFBBA3A3A485CEB212E744969D7E1FC7544FD11D2C4C80029
        A1F3A0458637C5FFA77804ED3DA6743B51E4C7B07BFA63507FF0C3955B946EC3
        638C2DBC9CEDC47AAFD9AB713B379FA5B9904CC8D1A417AD25BD494E6FF735C8
        CC513EA0C04248F3164D71748DBB589FFBC35EEC203E2C5B2412D26FEA704C1A
        DC53285FC9CC81DDDC2095DA6121242531D043886F52361F3E8505E1FB589A0B
        C984DCE33B15D69DDA08E5DD89E7312768974AEDB01232788EB310E4A01C3B9F
        8E89DF44B134179209793278AE38C17FBFE71802B6C7D778BF3CAAA3A525AB76
        FDCBF18361D9AE95503E9B9E89953FFD5AEDF38A8A4AA4666421FF25815D6F17
        7BB88F7A4F2867DCCEC500CFB5F543C80B110B60A8AF2B9417471E40445CB2C2
        7B5F6B6C88F8804FC956D250A567D1E3077BEF60E4E61728BC678A436FF87EE4
        2894B3891F6B357355FD10F29F701F3108BB68D37E6C3A7842E1BD766F7744D4
        7CD75A3D6F32D92D1D49B9ACF073577B6BAC7CEA8F3E2A2A81C5143F96E64232
        214F8778A1B9B191505EB6E5104263FF5078AFA1BE1E62964F43C7D6CD547A16
        DDB1382DDC8082E21285F754ED910F89905DEB8B9047C8D6B0432B53A1BC81EC
        667CC9AEA626B4B4B4D0DAB409B49F9B2357CD1889DE5DDA0AE5E40BD7E1455C
        97AA3C2673E42DE256BD6CDBE73361083E1DF1248871FDCE7DD87C1E583F848C
        2443751019B294F83397F171C05695DA61B56AD380F2FB4FA3E87FFC9D0197E5
        912CCD856442D26144871385062BBABBF9ABD40E2B21CFAC9F272E66A1B17F92
        E9E6204B73219990F48C3AC87DAC581FF65528CEA52B1FA56621248DCEEF5BEE
        26D6DD566F47DCC93496E642BABD762303D20BBCC89CA725D437EC27F3E4E638
        A5DBA92A248D654E5641C825931D30CDB18F50A6E7383DDC026A5C98EA949094
        4DDEAEB07FE7C93C494FF5FABA7F27B81ECAE0EF360213075909E51F7FFB0BF3
        C3A295FA3EF50892833CD1C4F0494CF200E989D3498F648F8442DA929EB485F4
        2839F48C869ED5284333E242D1DD0D85EE6A9E3FE77E19340961DEB841627DFC
        8A2824A6A6B33615921F35EC5D360D561DCC8432CD9A183A3F44E9E0ACAAD020
        C5AF64C7243FB9A447BEA3966C94E869120BF92EF101772DF944ACA75ECBC2C8
        451BC95CC5E6085611348F682779AE7C9F4ECF88462F0DAFF5F9B962D4708A18
        307D0426D85989F5DA44835EC924990C211ECE18D6BBAB784D9AD059B5A74A2F
        A481BE2E62574C17773A941DBFA7C03B349A798E63031D6D049005EA830196E2
        35BA851CBE300C85C5A5529908B5655AB46B698A3DBE5304B748CEEFE7AEC29D
        F44C5607F74D1B1B62FDE7E3D0C7A2AD788D6E06E8BC489353A5458DB93FD431
        DEEAF3A1E88A5068486B49641C62FE4CAD55DBC3FBBC25ECA6E481120A8D51BA
        7EB359E9C42CD55073365A27B3E642C88C0628AA428D0D894E143270CB1FBF5A
        6E231DC6437B76C14CA7FEE2A222272B375F4844A06982EA4103F99134CD79CD
        ACD1D5D258E4E492611EFFD7259CBC740369D7EFE0D6BD07C82F281616109A0A
        487F806E6FB640DFAEE6C2516FD5DE2D876E253D8277D718E8FD5F08296754FF
        EE58E8FABE9011C1023A4DACD87A18BB8E9D55B729D0780E39F5F726D95B0B19
        1166CD8C556A830EE3F0B864441E3C81A2D2324D98018D0B29BE0619BAFDBB99
        C3B197056C7B7440DBD74D14DE4B9DEB6B777285AC8943A72EE048CA953AF05F
        45EA8890CFD3C8405FC8FB3121F329DDE2959496A3B0A44C18BE37B3F39825A7
        B2A38E0A59FFE04232820BC9082E2423B8908CE04232820BC9082E2423B8908C
        E04232820BC9082E2423B8908CE04232820BC9082E2423B8908CE04232820BC9
        082E2423B8908C2042F23FC3527BE89F61F90F9381CCFC6500662E0000000049
        454E44AE426082}
      ExplicitHeight = 411
    end
    object Label5: TLabel
      Left = 144
      Top = 32
      Width = 121
      Height = 16
      Caption = 'ADICIONAR VALOR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object BitBtn1: TBitBtn
    Left = 312
    Top = 248
    Width = 90
    Height = 41
    Caption = 'Confirmar'
    TabOrder = 5
    OnClick = BitBtn1Click
  end
end
