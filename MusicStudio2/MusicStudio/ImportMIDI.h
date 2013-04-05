#pragma once


// CImportMIDI dialog

class CImportMIDI : public CDialogEx
{
	DECLARE_DYNAMIC(CImportMIDI)

public:
	CImportMIDI(CWnd* pParent = NULL);   // standard constructor
	virtual ~CImportMIDI();

// Dialog Data
	enum { IDD = IDD_IMPORTMIDI };

protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support

	DECLARE_MESSAGE_MAP()
public:
	int mTimeMultiplier;
	int mBlockLength;
	int mChannelMap0;
	int mChannelMap1;
	int mChannelMap2;
	int mChannelMap3;
	int mChannelMap4;
	int mChannelMap5;
	int mChannelMap6;
	int mChannelMap7;
	int mChannelMap8;
	int mChannelMap9;
	int mChannelMap10;
	int mChannelMap11;
	int mChannelMap12;
	int mChannelMap13;
	int mChannelMap14;
	int mChannelMap15;
	BOOL mReleaseNoteAfterHalfDuration;
};
