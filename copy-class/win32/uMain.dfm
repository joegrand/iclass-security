object FM_Main: TFM_Main
  Left = 0
  Top = 0
  ActiveControl = BT_CardReload
  BorderStyle = bsDialog
  Caption = 'CopyClass v0.1nk (no keys included)'
  ClientHeight = 445
  ClientWidth = 595
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 217
    Height = 241
    Caption = '&Card'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 51
      Width = 92
      Height = 13
      Caption = 'Card Serial &Number'
      FocusControl = ED_Serial
    end
    object Label2: TLabel
      Left = 16
      Top = 96
      Width = 118
      Height = 13
      Caption = 'Configuration &Block Data'
      FocusControl = ED_ConfigBlock
    end
    object Label3: TLabel
      Left = 16
      Top = 144
      Width = 108
      Height = 13
      Caption = 'Application issuer &data'
      FocusControl = ED_AppIssuer
    end
    object CB_Readers: TComboBox
      Left = 16
      Top = 24
      Width = 179
      Height = 21
      Style = csDropDownList
      TabOrder = 0
    end
    object ED_Serial: TEdit
      Left = 16
      Top = 67
      Width = 179
      Height = 24
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object ED_ConfigBlock: TEdit
      Left = 16
      Top = 115
      Width = 179
      Height = 24
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object ED_AppIssuer: TEdit
      Left = 16
      Top = 163
      Width = 179
      Height = 24
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object BT_CardReload: TBitBtn
      Left = 14
      Top = 205
      Width = 181
      Height = 25
      Hint = 'Press F5 to reload card info'
      Caption = '&Reload'
      DoubleBuffered = True
      Glyph.Data = {
        42040000424D4204000000000000420000002800000010000000100000000100
        200003000000000400006D0B00006D0B000000000000000000000000FF0000FF
        0000FF000000DFDEDF00B4C6B8056CA675046EAA78046FAB79046FAB79056EAA
        77056BA77405A1BDA605D2D6D301D6D8D701E0DEE000DFDEDF00DDDDDD00DDDD
        DD00DDDDDD00DFDEDF00B2C5B606219230050CB1240018C339001ECB45001DCA
        43000CB2250155A05F04639A6E083F964C0479AD8104C1CCC303DFDEDF00DDDD
        DD00DDDDDD00DDDDDD00E0DEDF00A3BEA8061CA032041BCF3E0025DD500026DE
        510016C736005EA96902B8C7BC05399A49070AA922012B9C3B04A1BDA604DFDE
        DE00DDDDDD00DEDDDE00D8D9D80174AB7C0613A2270318C9370020D5450020D5
        460014C4330061AB6D04E2DEE100B9C8BC052AA7410415C83600259E3703B5C6
        B804E0DEDF00DDDCDD0179AD8007069A10020AB81C0015C630001ACE3B001ACE
        3B0011BF2D0062AA6E06DFDDDE01DFDDDF0173AD7E0617C0370113C2320057A3
        6205DADADB01A9C1AD0615951D0400A8060008B316000FBD26001BAB34031CA7
        34030AB5210063A96E04DFDDDF00E0DFE000AAC2AF0419AC320216CC350021A1
        3303B9C7BB044F9D580800A1070000A8070003AD0F001E9F2F039ABAA00596B9
        9D071298240465A86E01DFDDDF00DFDEDF00B5C7B90418A42C0212C42A0010A9
        24018DB393041A92260604AE110001AA0900059B0F0187B28E05E0DEE000DFDD
        DE018CB393078BB29205DFDEDF00E1DFE0009CBBA1050BA11B020BB91D0009AA
        1B0071A879040F971F050CB91F0003AD0E002D973604CFD3D002DFDEDE00D4D8
        D501B2C4B604D8DAD902DEDEDE00DCDBDC0257A0600600A3090004AF0F0004A2
        100173A97B041E9F330611C12A0005AE140058A26004DEDCDE01DFDEDF00B8C9
        BB0221852E0491B69705DFDDDF0190B496070C95150300A7050000A806000797
        110195B69B0542A3540715C4320007B0190062A56A04DFDDDF00DFDEDF00B5C7
        B9020E9417011A9323035E9D670613941C0300A5050000A7060000A504002A94
        3304C7CFC90383B38D0719BB39020CBC2300419B4A04D8D9D902E0DFE000B3C6
        B7070D97170400A40500009B060000A6050000A7060000A8050004960C0183AF
        8A05DFDEDF00C9D1CB043EAA540614C73300149B2002ADC2B104E3E0E200B2C5
        B605119E200300A9070000A7060000A7060000A70600019A0A01599F6205D5D7
        D602DEDEDE00E0DEDF00A9C2AE062BAC46040AB42300449D4F04D1D5D202B3C6
        B70318A92E0204AF0F0002A90A0001AA09000099060047935107D2D6D303DEDE
        DE00DDDDDD00DDDDDD00DEDDDE00B0C5B4054DAA5F0717982B044E965A0698B6
        9E0521B53F0115C8310012C12A000FBD240007AF160021962E03A4BFA903DEDD
        DE00DDDDDD00DDDDDD00DDDDDD00E0DEDF00D5D7D603AAC2AF067FAC870794B4
        9B09209F3E0514AA350411A32E0612A02C04139E2A0109901C03418E4E08D5D8
        D602DEDDDE00}
      ParentDoubleBuffered = False
      TabOrder = 4
      OnClick = BT_CardReloadClick
    end
  end
  object CB_Authenticate: TGroupBox
    Left = 8
    Top = 255
    Width = 217
    Height = 162
    Caption = '&Authenticate Key'
    TabOrder = 1
    object ED_AuthKey: TComboBox
      Left = 16
      Top = 36
      Width = 179
      Height = 24
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ItemIndex = 1
      MaxLength = 16
      ParentFont = False
      TabOrder = 0
      Text = 'F0E1D2C3B4A59687'
      Items.Strings = (
        '7665544332211000'
        'F0E1D2C3B4A59687'
        '')
    end
    object RG_KeyType: TRadioGroup
      Left = 16
      Top = 66
      Width = 179
      Height = 39
      Caption = 'Key &Type'
      Columns = 3
      Enabled = False
      ItemIndex = 0
      Items.Strings = (
        'Auto'
        'Kd (&1)'
        'Kc (&2)')
      TabOrder = 1
    end
    object ST_AuthKey: TStaticText
      Left = 16
      Top = 18
      Width = 29
      Height = 17
      Caption = '&Key'
      FocusControl = ED_AuthKey
      TabOrder = 2
    end
    object BT_Auth: TBitBtn
      Left = 16
      Top = 119
      Width = 179
      Height = 25
      Caption = '&Authenticate'
      DoubleBuffered = True
      Enabled = False
      Glyph.Data = {
        42040000424D4204000000000000420000002800000010000000100000000100
        200003000000000400006D0B00006D0B000000000000000000000000FF0000FF
        0000FF000000DDDDDD00DDDDDD00DCDCDC01BCBCBC09C9C9C906DDDDDD01DDDD
        DD00DDDDDD00DDDDDD00DDDDDD00DEDDDD00E0DEDD00DEDEDD00DDDDDD00DDDD
        DD00DDDDDD00DDDDDD00DDDDDD00D8D8D803A9A9A906A9A9A905C8C8C806DDDD
        DD00DDDDDD00DDDDDD00DEDDDD00D3D7DB03B0C7D906C4D0D904DEDDDD00DDDD
        DD00DDDDDD00DDDDDD00DDDDDD00D8D8D802B4B4B405B0B0B000B8B8B806DDDD
        DD00DDDDDD00DDDDDD00D6D9DB0385B9DF084AACE1038FBCD505DFDEDD00DDDD
        DD00DDDDDD00DDDDDD00DDDDDD00DCDCDC01BFBFBF06B5B5B500B3B3B306DDDD
        DD01DDDDDD00DEDDDD00D1D5DA0466B3E60646B4E40094C4DA06DFDDDD00DDDD
        DD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00C9C9C906C1C1C101B9B9B905D1D1
        D104DEDEDE00DEDDDD00BACBDA0753AEE5044EB8E102B6CFDA05DFDEDD00DDDD
        DD00DDDDDD00DDDDDD00DDDDDD00DEDEDE00D1D1D105CACACA02C7C7C702C8C8
        C706DEDEDD00DBDBDB0288BFE2094CBDE80062BDDF04D0D7DB03DEDDDD00DDDD
        DD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00D6D6D604D0D0D004DDDDDD00BAC1
        C705C2C9CE06A8C3D70768C4EC044CBFE50081C5DC06DCDCDC01DDDDDD00DDDD
        DD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00D4D4D405D6D5D505D4DCE50071BB
        EB0164CAE40368C5E50258D5F4004EC2E201A7CEDB05DFDDDD00DDDDDD00DDDD
        DD00DDDDDD00DDDDDD00DDDDDD00D5D5D504D6D6D606EDEDEC01AECFED0057C4
        FB0056DDFF005CE7FE005CE2F9005BD0EB02B5CFD805DEDDDD00DDDDDD00DDDD
        DD00DDDDDD00DDDDDD00DDDDDD00D5D5D504E5E5E504E4E8EB008AC5EF004EC4
        FE0059C0E6006DC9DE0061DFF2005DE4FB006CD4EB04BDD3DA04DFDDDD00DDDD
        DD00DDDDDD00DDDDDD00DDDDDD00D9D9D903E6E6E505CFDEE7006FBFF50040B7
        FE0063A8CB009FA7AB0095AFB3006AC9D8005BDEF702B0D1DB05DFDDDD00DDDD
        DD00DDDDDD00DDDDDD00DDDDDD00DBDBDB01D8D8D705CFDFE70080C6F50048B3
        FE0044B5F60053ADD80079A0B00094A9AC006ECCDD04C8D7DB04DEDDDD00DDDD
        DD00DDDDDD00DDDDDD00DDDDDD00DBDBDB01C8C8C706D0D2D200BACAD20197C5
        E1026CC0F40251C3FF0054BDEA0097A7AC008DB9C505D7DBDC02DDDDDD00DDDD
        DD00DDDDDD00DDDDDD00DDDDDD00DCDCDC01D2D2D207CACAC903C1C1C00ACBCD
        CD07C2D0D7089BC6E00884B6D0039FA9AE02ABBFC807DEDEDE00DDDDDD00DDDD
        DD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00D9D9D903D6D6D607CECECE06C7C7
        C709C6C6C50AC1C1C107BABABA06BEC1C308D5D8DA03DEDDDD00DDDDDD00DDDD
        DD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00D9D9D903D3D3D307CECE
        CE07C9C9C907C8C8C807D0D0D006DCDCDC01DEDDDD00DDDDDD00DDDDDD00DDDD
        DD00DDDDDD00}
      ModalResult = 8
      ParentDoubleBuffered = False
      TabOrder = 3
      OnClick = BT_AuthClick
      OnMouseDown = ClearStatusPanel
    end
  end
  object GroupBox3: TGroupBox
    Left = 237
    Top = 8
    Width = 348
    Height = 409
    Caption = 'Da&ta Blocks'
    TabOrder = 2
    object BT_ReadCard: TButton
      Left = 18
      Top = 22
      Width = 90
      Height = 25
      Caption = 'R&ead Card'
      Enabled = False
      TabOrder = 0
      OnClick = BT_ReadCardClick
    end
    object CB_Decrypt: TCheckBox
      Left = 130
      Top = 22
      Width = 199
      Height = 17
      Caption = 'Decrypt &Access Control Application'
      Enabled = False
      TabOrder = 1
    end
    object Memo: TRichEdit
      Left = 18
      Top = 53
      Width = 311
      Height = 338
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 2
      OnMouseDown = MemoMouseDown
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 426
    Width = 595
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  object Timer: TTimer
    Interval = 200
    Left = 496
    Top = 96
  end
  object PopupMenu: TPopupMenu
    Left = 496
    Top = 144
    object BT_CopyToClipboard: TMenuItem
      Caption = '&Copy to Clipboard'
      OnClick = BT_CopyToClipboardClick
    end
  end
end
