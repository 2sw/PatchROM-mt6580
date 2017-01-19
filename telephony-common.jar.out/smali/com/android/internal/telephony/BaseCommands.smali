.class public abstract Lcom/android/internal/telephony/BaseCommands;
.super Ljava/lang/Object;
.source "BaseCommands.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# instance fields
.field protected mAbnormalEventRegistrant:Landroid/os/RegistrantList;

.field protected mAcceptedRegistrant:Landroid/os/RegistrantList;

.field protected mAvailRegistrants:Landroid/os/RegistrantList;

.field protected mBipProCmdRegistrant:Landroid/os/Registrant;

.field protected mBipPsType:I

.field protected mCallForwardingInfoRegistrants:Landroid/os/RegistrantList;

.field protected mCallInfoRegistrants:Landroid/os/RegistrantList;

.field protected mCallRelatedSuppSvcRegistrant:Landroid/os/Registrant;

.field protected mCallStateRegistrants:Landroid/os/RegistrantList;

.field protected mCallWaitingInfoRegistrants:Landroid/os/RegistrantList;

.field protected mCatCallSetUpRegistrant:Landroid/os/Registrant;

.field protected mCatCcAlphaRegistrant:Landroid/os/Registrant;

.field protected mCatEventRegistrant:Landroid/os/Registrant;

.field protected mCatProCmdRegistrant:Landroid/os/Registrant;

.field protected mCatSendSmsResultRegistrant:Landroid/os/Registrant;

.field protected mCatSessionEndRegistrant:Landroid/os/Registrant;

.field protected mCdmaCardTypeRegistrants:Landroid/os/RegistrantList;

.field protected mCdmaCardTypeValue:Ljava/lang/Object;

.field protected mCdmaImsiReadyRegistrant:Landroid/os/RegistrantList;

.field protected mCdmaPrlChangedRegistrants:Landroid/os/RegistrantList;

.field protected mCdmaSignalFadeRegistrant:Landroid/os/Registrant;

.field protected mCdmaSmsRegistrant:Landroid/os/Registrant;

.field protected mCdmaSubscription:I

.field protected mCdmaSubscriptionChangedRegistrants:Landroid/os/RegistrantList;

.field protected mCdmaToneSignalsRegistrant:Landroid/os/Registrant;

.field protected mCfuReturnValue:Ljava/lang/Object;

.field protected mCipherIndicationRegistrant:Landroid/os/RegistrantList;

.field protected mCommonSlotNoChangedRegistrants:Landroid/os/RegistrantList;

.field protected mContext:Landroid/content/Context;

.field protected mDataAllowedRegistrants:Landroid/os/RegistrantList;

.field protected mDataNetworkStateRegistrants:Landroid/os/RegistrantList;

.field protected mDataNetworkTypeChangedRegistrant:Landroid/os/RegistrantList;

.field protected mDedicateBearerActivatedRegistrant:Landroid/os/RegistrantList;

.field protected mDedicateBearerDeactivatedRegistrant:Landroid/os/RegistrantList;

.field protected mDedicateBearerModifiedRegistrant:Landroid/os/RegistrantList;

.field protected mDisplayInfoRegistrants:Landroid/os/RegistrantList;

.field protected mEconfResultRegistrants:Landroid/os/RegistrantList;

.field protected mEconfSrvccRegistrants:Landroid/os/RegistrantList;

.field protected mEcopsReturnValue:Ljava/lang/Object;

.field protected mEfCspPlmnModeBitRegistrant:Landroid/os/Registrant;

.field protected mEmergencyBearerSupportInfoRegistrants:Landroid/os/RegistrantList;

.field protected mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

.field protected mEmsrReturnValue:Ljava/lang/Object;

.field protected mEngModeNetworkInfoRegistrant:Landroid/os/RegistrantList;

.field protected mEpsNetworkFeatureInfoRegistrants:Landroid/os/RegistrantList;

.field protected mEpsNetworkFeatureSupportRegistrants:Landroid/os/RegistrantList;

.field protected mEtwsNotificationRegistrant:Landroid/os/Registrant;

.field protected mEusimReady:Landroid/os/RegistrantList;

.field protected mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

.field protected mFemtoCellInfoRegistrants:Landroid/os/RegistrantList;

.field protected mGetAvailableNetworkDoneRegistrant:Landroid/os/RegistrantList;

.field protected mGmssRatChangedRegistrant:Landroid/os/RegistrantList;

.field protected mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

.field protected mGsmSmsRegistrant:Landroid/os/Registrant;

.field protected mHardwareConfigChangeRegistrants:Landroid/os/RegistrantList;

.field protected mIccRefreshRegistrants:Landroid/os/RegistrantList;

.field protected mIccSmsFullRegistrant:Landroid/os/Registrant;

.field protected mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

.field protected mImeiLockRegistrant:Landroid/os/RegistrantList;

.field protected mImsDisableRegistrants:Landroid/os/RegistrantList;

.field protected mImsEnableRegistrants:Landroid/os/RegistrantList;

.field protected mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

.field protected mImsRegistrationInfoRegistrants:Landroid/os/RegistrantList;

.field protected mImsiRefreshDoneRegistrant:Landroid/os/RegistrantList;

.field protected mIncomingCallIndicationRegistrant:Landroid/os/Registrant;

.field protected mInvalidSimDetectedRegistrant:Landroid/os/RegistrantList;

.field protected mInvalidSimInfoRegistrant:Landroid/os/RegistrantList;

.field protected mIratStateChangeRegistrant:Landroid/os/RegistrantList;

.field protected mIsEusimReady:Z

.field protected mIsSmsReady:Z

.field protected mIsSmsSimFull:Z

.field protected mLceInfoRegistrant:Landroid/os/Registrant;

.field protected mLineControlInfoRegistrants:Landroid/os/RegistrantList;

.field protected mLteAccessStratumStateRegistrants:Landroid/os/RegistrantList;

.field protected mMccMncChangeRegistrants:Landroid/os/RegistrantList;

.field protected mMeSmsFullRegistrant:Landroid/os/Registrant;

.field protected mMelockRegistrants:Landroid/os/RegistrantList;

.field protected mMoDataBarringInfoRegistrants:Landroid/os/RegistrantList;

.field protected mNITZTimeRegistrant:Landroid/os/Registrant;

.field protected mNeighboringInfoRegistrants:Landroid/os/RegistrantList;

.field protected mNetworkExistRegistrants:Landroid/os/RegistrantList;

.field protected mNetworkInfoRegistrants:Landroid/os/RegistrantList;

.field protected mNetworkTypeChangedRegistrant:Landroid/os/RegistrantList;

.field protected mNotAvailRegistrants:Landroid/os/RegistrantList;

.field protected mNumberInfoRegistrants:Landroid/os/RegistrantList;

.field protected mOffOrNotAvailRegistrants:Landroid/os/RegistrantList;

.field protected mOnRegistrants:Landroid/os/RegistrantList;

.field protected mOtaProvisionRegistrants:Landroid/os/RegistrantList;

.field protected mPhbReadyRegistrants:Landroid/os/RegistrantList;

.field protected mPhoneRadioCapabilityChangedRegistrants:Landroid/os/RegistrantList;

.field protected mPhoneType:I

.field protected mPlmnChangeNotificationRegistrant:Landroid/os/RegistrantList;

.field protected mPreferredNetworkType:I

.field protected mPsNetworkStateRegistrants:Landroid/os/RegistrantList;

.field protected mRacUpdateRegistrants:Landroid/os/RegistrantList;

.field mRadioCapability:Lcom/android/internal/telephony/RadioCapability;

.field protected mRadioStateChangedRegistrants:Landroid/os/RegistrantList;

.field protected mRedirNumInfoRegistrants:Landroid/os/RegistrantList;

.field protected mRegistrationSuspendedRegistrant:Landroid/os/Registrant;

.field protected mRemoveRestrictEutranRegistrants:Landroid/os/RegistrantList;

.field protected mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

.field protected mResetAttachApnRegistrants:Landroid/os/RegistrantList;

.field protected mRestrictedStateRegistrant:Landroid/os/Registrant;

.field protected mRilCellInfoListRegistrants:Landroid/os/RegistrantList;

.field protected mRilConnectedRegistrants:Landroid/os/RegistrantList;

.field protected mRilVersion:I

.field protected mRingRegistrant:Landroid/os/Registrant;

.field protected mRingbackToneRegistrants:Landroid/os/RegistrantList;

.field protected mScriResultRegistrant:Landroid/os/Registrant;

.field protected mSessionChangedRegistrants:Landroid/os/RegistrantList;

.field protected mSignalInfoRegistrants:Landroid/os/RegistrantList;

.field protected mSignalStrengthRegistrant:Landroid/os/Registrant;

.field protected mSimMissing:Landroid/os/RegistrantList;

.field protected mSimPlugInRegistrants:Landroid/os/RegistrantList;

.field protected mSimPlugOutRegistrants:Landroid/os/RegistrantList;

.field protected mSimRecovery:Landroid/os/RegistrantList;

.field protected mSmsOnSimRegistrant:Landroid/os/Registrant;

.field protected mSmsReadyRegistrants:Landroid/os/RegistrantList;

.field protected mSmsStatusRegistrant:Landroid/os/Registrant;

.field protected mSpeechCodecInfoRegistrant:Landroid/os/Registrant;

.field protected mSrvccHandoverInfoIndicationRegistrants:Landroid/os/RegistrantList;

.field protected mSrvccStateRegistrants:Landroid/os/RegistrantList;

.field protected mSsRegistrant:Landroid/os/Registrant;

.field protected mSsacBarringInfoRegistrants:Landroid/os/RegistrantList;

.field protected mSsnRegistrant:Landroid/os/Registrant;

.field protected mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field protected mStateMonitor:Ljava/lang/Object;

.field protected mStkCallCtrlRegistrant:Landroid/os/Registrant;

.field protected mStkEvdlCallRegistrant:Landroid/os/Registrant;

.field protected mStkSetupMenuResetRegistrant:Landroid/os/Registrant;

.field protected mStkSwitchMode:I

.field protected mSubscriptionStatusRegistrants:Landroid/os/RegistrantList;

.field protected mT53AudCntrlInfoRegistrants:Landroid/os/RegistrantList;

.field protected mT53ClirInfoRegistrants:Landroid/os/RegistrantList;

.field protected mTrayPlugInRegistrants:Landroid/os/RegistrantList;

.field protected mUSSDRegistrant:Landroid/os/Registrant;

.field protected mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

.field protected mUtkEventRegistrant:Landroid/os/Registrant;

.field protected mUtkProCmdRegistrant:Landroid/os/Registrant;

.field protected mUtkSessionEndRegistrant:Landroid/os/Registrant;

.field protected mViaGpsEvent:Landroid/os/RegistrantList;

.field protected mVirtualSimOff:Landroid/os/RegistrantList;

.field protected mVirtualSimOn:Landroid/os/RegistrantList;

.field protected mVoiceNetworkStateRegistrants:Landroid/os/RegistrantList;

.field protected mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

.field protected mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

.field protected mVoiceRadioTechChangedRegistrants:Landroid/os/RegistrantList;

.field protected mVtRingRegistrants:Landroid/os/RegistrantList;

.field protected mVtStatusInfoRegistrants:Landroid/os/RegistrantList;

.field protected mWPMonitor:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    .line 45
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRadioStateChangedRegistrants:Landroid/os/RegistrantList;

    .line 46
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mOnRegistrants:Landroid/os/RegistrantList;

    .line 47
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mAvailRegistrants:Landroid/os/RegistrantList;

    .line 48
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mOffOrNotAvailRegistrants:Landroid/os/RegistrantList;

    .line 49
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNotAvailRegistrants:Landroid/os/RegistrantList;

    .line 50
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    .line 51
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mVoiceNetworkStateRegistrants:Landroid/os/RegistrantList;

    .line 52
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mDataNetworkStateRegistrants:Landroid/os/RegistrantList;

    .line 53
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mVoiceRadioTechChangedRegistrants:Landroid/os/RegistrantList;

    .line 54
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    .line 55
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    .line 56
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    .line 57
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    .line 59
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mOtaProvisionRegistrants:Landroid/os/RegistrantList;

    .line 60
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCallWaitingInfoRegistrants:Landroid/os/RegistrantList;

    .line 61
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    .line 62
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    .line 63
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNumberInfoRegistrants:Landroid/os/RegistrantList;

    .line 64
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRedirNumInfoRegistrants:Landroid/os/RegistrantList;

    .line 65
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mLineControlInfoRegistrants:Landroid/os/RegistrantList;

    .line 66
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mT53ClirInfoRegistrants:Landroid/os/RegistrantList;

    .line 67
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mT53AudCntrlInfoRegistrants:Landroid/os/RegistrantList;

    .line 68
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    .line 69
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    .line 70
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSubscriptionChangedRegistrants:Landroid/os/RegistrantList;

    .line 71
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaPrlChangedRegistrants:Landroid/os/RegistrantList;

    .line 72
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    .line 73
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilConnectedRegistrants:Landroid/os/RegistrantList;

    .line 74
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    .line 75
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilCellInfoListRegistrants:Landroid/os/RegistrantList;

    .line 76
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSubscriptionStatusRegistrants:Landroid/os/RegistrantList;

    .line 77
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSrvccStateRegistrants:Landroid/os/RegistrantList;

    .line 78
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mHardwareConfigChangeRegistrants:Landroid/os/RegistrantList;

    .line 80
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    .line 79
    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mPhoneRadioCapabilityChangedRegistrants:Landroid/os/RegistrantList;

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilVersion:I

    .line 965
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSessionChangedRegistrants:Landroid/os/RegistrantList;

    .line 973
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCallForwardingInfoRegistrants:Landroid/os/RegistrantList;

    .line 977
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCipherIndicationRegistrant:Landroid/os/RegistrantList;

    .line 984
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mMelockRegistrants:Landroid/os/RegistrantList;

    .line 987
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mPhbReadyRegistrants:Landroid/os/RegistrantList;

    .line 991
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mEconfSrvccRegistrants:Landroid/os/RegistrantList;

    .line 993
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mEconfResultRegistrants:Landroid/os/RegistrantList;

    .line 995
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCallInfoRegistrants:Landroid/os/RegistrantList;

    .line 1001
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRacUpdateRegistrants:Landroid/os/RegistrantList;

    .line 1002
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRemoveRestrictEutranRegistrants:Landroid/os/RegistrantList;

    .line 1004
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mResetAttachApnRegistrants:Landroid/os/RegistrantList;

    .line 1007
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mEngModeNetworkInfoRegistrant:Landroid/os/RegistrantList;

    .line 1025
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mFemtoCellInfoRegistrants:Landroid/os/RegistrantList;

    .line 1026
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNeighboringInfoRegistrants:Landroid/os/RegistrantList;

    .line 1027
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNetworkInfoRegistrants:Landroid/os/RegistrantList;

    .line 1028
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNetworkExistRegistrants:Landroid/os/RegistrantList;

    .line 1030
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mPlmnChangeNotificationRegistrant:Landroid/os/RegistrantList;

    .line 1032
    iput-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mEmsrReturnValue:Ljava/lang/Object;

    .line 1033
    iput-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mEcopsReturnValue:Ljava/lang/Object;

    .line 1034
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mWPMonitor:Ljava/lang/Object;

    .line 1037
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mImsEnableRegistrants:Landroid/os/RegistrantList;

    .line 1038
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mImsDisableRegistrants:Landroid/os/RegistrantList;

    .line 1039
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mImsRegistrationInfoRegistrants:Landroid/os/RegistrantList;

    .line 1040
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mDedicateBearerActivatedRegistrant:Landroid/os/RegistrantList;

    .line 1041
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mDedicateBearerModifiedRegistrant:Landroid/os/RegistrantList;

    .line 1042
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mDedicateBearerDeactivatedRegistrant:Landroid/os/RegistrantList;

    .line 1044
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mPsNetworkStateRegistrants:Landroid/os/RegistrantList;

    .line 1045
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mImeiLockRegistrant:Landroid/os/RegistrantList;

    .line 1046
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mInvalidSimInfoRegistrant:Landroid/os/RegistrantList;

    .line 1047
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mGetAvailableNetworkDoneRegistrant:Landroid/os/RegistrantList;

    .line 1051
    iput-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mCfuReturnValue:Ljava/lang/Object;

    .line 1056
    iput-boolean v2, p0, Lcom/android/internal/telephony/BaseCommands;->mIsSmsSimFull:Z

    .line 1057
    iput-boolean v2, p0, Lcom/android/internal/telephony/BaseCommands;->mIsSmsReady:Z

    .line 1058
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsReadyRegistrants:Landroid/os/RegistrantList;

    .line 1064
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mEpsNetworkFeatureSupportRegistrants:Landroid/os/RegistrantList;

    .line 1065
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mEpsNetworkFeatureInfoRegistrants:Landroid/os/RegistrantList;

    .line 1066
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSrvccHandoverInfoIndicationRegistrants:Landroid/os/RegistrantList;

    .line 1067
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mMoDataBarringInfoRegistrants:Landroid/os/RegistrantList;

    .line 1068
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSsacBarringInfoRegistrants:Landroid/os/RegistrantList;

    .line 1070
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mEmergencyBearerSupportInfoRegistrants:Landroid/os/RegistrantList;

    .line 1074
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mViaGpsEvent:Landroid/os/RegistrantList;

    .line 1075
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mAcceptedRegistrant:Landroid/os/RegistrantList;

    .line 1076
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNetworkTypeChangedRegistrant:Landroid/os/RegistrantList;

    .line 1080
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mInvalidSimDetectedRegistrant:Landroid/os/RegistrantList;

    .line 1083
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mMccMncChangeRegistrants:Landroid/os/RegistrantList;

    .line 1087
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mGmssRatChangedRegistrant:Landroid/os/RegistrantList;

    .line 1091
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mDataNetworkTypeChangedRegistrant:Landroid/os/RegistrantList;

    .line 1094
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mIratStateChangeRegistrant:Landroid/os/RegistrantList;

    .line 1098
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mAbnormalEventRegistrant:Landroid/os/RegistrantList;

    .line 1101
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mVtStatusInfoRegistrants:Landroid/os/RegistrantList;

    .line 1102
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mVtRingRegistrants:Landroid/os/RegistrantList;

    .line 1105
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaImsiReadyRegistrant:Landroid/os/RegistrantList;

    .line 1106
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mImsiRefreshDoneRegistrant:Landroid/os/RegistrantList;

    .line 1109
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mLteAccessStratumStateRegistrants:Landroid/os/RegistrantList;

    .line 1313
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSimMissing:Landroid/os/RegistrantList;

    .line 1314
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSimRecovery:Landroid/os/RegistrantList;

    .line 1315
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mVirtualSimOn:Landroid/os/RegistrantList;

    .line 1316
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mVirtualSimOff:Landroid/os/RegistrantList;

    .line 1317
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSimPlugOutRegistrants:Landroid/os/RegistrantList;

    .line 1318
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSimPlugInRegistrants:Landroid/os/RegistrantList;

    .line 1319
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mTrayPlugInRegistrants:Landroid/os/RegistrantList;

    .line 1320
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaCardTypeRegistrants:Landroid/os/RegistrantList;

    .line 1321
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCommonSlotNoChangedRegistrants:Landroid/os/RegistrantList;

    .line 1322
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mDataAllowedRegistrants:Landroid/os/RegistrantList;

    .line 1323
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mEusimReady:Landroid/os/RegistrantList;

    .line 1324
    iput-boolean v2, p0, Lcom/android/internal/telephony/BaseCommands;->mIsEusimReady:Z

    .line 1325
    iput-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaCardTypeValue:Ljava/lang/Object;

    .line 116
    iput-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mContext:Landroid/content/Context;

    .line 115
    return-void
.end method


# virtual methods
.method public ReadPhbEntry(IIILandroid/os/Message;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "bIndex"    # I
    .param p3, "eIndex"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 1485
    return-void
.end method

.method public abortFemtoCellList(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1674
    return-void
.end method

.method public acceptVtCallWithVoiceOnly(ILandroid/os/Message;)V
    .locals 0
    .param p1, "callId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1271
    return-void
.end method

.method public addConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "confCallId"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "callIdToAdd"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 1855
    return-void
.end method

.method public cancelAvailableNetworks(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1654
    return-void
.end method

.method public conferenceDial([Ljava/lang/String;IZLandroid/os/Message;)V
    .locals 0
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "isVideoCall"    # Z
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 2129
    return-void
.end method

.method public configEvdoMode(ILandroid/os/Message;)V
    .locals 0
    .param p1, "evdoMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 2085
    return-void
.end method

.method public configModemStatus(IILandroid/os/Message;)V
    .locals 0
    .param p1, "modemStatus"    # I
    .param p2, "remoteSimProtocol"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 2076
    return-void
.end method

.method public confirmIratChange(ILandroid/os/Message;)V
    .locals 0
    .param p1, "apDecision"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 2171
    return-void
.end method

.method public connectRilSocket()V
    .locals 0

    .prologue
    .line 2082
    return-void
.end method

.method public deleteUPBEntry(IIILandroid/os/Message;)V
    .locals 0
    .param p1, "entryType"    # I
    .param p2, "adnIndex"    # I
    .param p3, "entryIndex"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 1503
    return-void
.end method

.method public disconnectRilSocket()V
    .locals 0

    .prologue
    .line 2079
    return-void
.end method

.method public doGeneralSimAuthentication(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "sessionId"    # I
    .param p2, "mode"    # I
    .param p3, "tag"    # I
    .param p4, "param1"    # Ljava/lang/String;
    .param p5, "param2"    # Ljava/lang/String;
    .param p6, "response"    # Landroid/os/Message;

    .prologue
    .line 1309
    return-void
.end method

.method public editUPBEntry(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "entryType"    # I
    .param p2, "adnIndex"    # I
    .param p3, "entryIndex"    # I
    .param p4, "strVal"    # Ljava/lang/String;
    .param p5, "tonForNum"    # Ljava/lang/String;
    .param p6, "response"    # Landroid/os/Message;

    .prologue
    .line 1500
    return-void
.end method

.method public emergencyDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 1242
    return-void
.end method

.method public enableMd3Sleep(I)V
    .locals 0
    .param p1, "enable"    # I

    .prologue
    .line 2308
    return-void
.end method

.method public forceReleaseCall(ILandroid/os/Message;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1240
    return-void
.end method

.method public getAtr(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 952
    return-void
.end method

.method public getAvoidSYSList(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1969
    return-void
.end method

.method public getBootupRadioCapability()Lcom/android/internal/telephony/RadioCapability;
    .locals 3

    .prologue
    .line 2203
    const-string/jumbo v0, "RILJ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getBootupRadioCapability: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/BaseCommands;->mRadioCapability:Lcom/android/internal/telephony/RadioCapability;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2204
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRadioCapability:Lcom/android/internal/telephony/RadioCapability;

    return-object v0
.end method

.method public getCurrentPOLList(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1667
    return-void
.end method

.method public getDisplayState()I
    .locals 1

    .prologue
    .line 2112
    const/4 v0, 0x0

    return v0
.end method

.method public getFemtoCellList(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "rat"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 1673
    return-void
.end method

.method public getIccApplicationStatus(ILandroid/os/Message;)V
    .locals 0
    .param p1, "sessionId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1284
    return-void
.end method

.method public getLteOnCdmaMode()I
    .locals 1

    .prologue
    .line 840
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v0

    return v0
.end method

.method public getLteOnGsmMode()I
    .locals 1

    .prologue
    .line 959
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnGsmModeStatic()I

    move-result v0

    return v0
.end method

.method public getNitzTime(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1960
    return-void
.end method

.method public getOplmnVersion(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1979
    return-void
.end method

.method public getPOLCapabilty(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1665
    return-void
.end method

.method public getPhoneBookMemStorage(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1518
    return-void
.end method

.method public getPhoneBookStringsLength(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1515
    return-void
.end method

.method public getRadioCapability(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 887
    return-void
.end method

.method public getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    return-object v0
.end method

.method public getRilVersion()I
    .locals 1

    .prologue
    .line 873
    iget v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilVersion:I

    return v0
.end method

.method public getSmsSimMemoryStatus(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1606
    return-void
.end method

.method public hangupAll(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1239
    return-void
.end method

.method public holdCall(ILandroid/os/Message;)V
    .locals 0
    .param p1, "callIdToHold"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1870
    return-void
.end method

.method public iccCloseLogicalChannel(ILandroid/os/Message;)V
    .locals 0
    .param p1, "channel"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 941
    return-void
.end method

.method public iccOpenLogicalChannel(Ljava/lang/String;BLandroid/os/Message;)V
    .locals 0
    .param p1, "AID"    # Ljava/lang/String;
    .param p2, "p2"    # B
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 938
    return-void
.end method

.method public iccOpenLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "AID"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 935
    return-void
.end method

.method public iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "cla"    # I
    .param p2, "instruction"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "data"    # Ljava/lang/String;
    .param p7, "response"    # Landroid/os/Message;

    .prologue
    .line 949
    return-void
.end method

.method public iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "channel"    # I
    .param p2, "cla"    # I
    .param p3, "instruction"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "response"    # Landroid/os/Message;

    .prologue
    .line 946
    return-void
.end method

.method public isGettingAvailableNetworks()Z
    .locals 1

    .prologue
    .line 1692
    const/4 v0, 0x0

    return v0
.end method

.method public lookupOperatorNameFromNetwork(JLjava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # J
    .param p3, "numeric"    # Ljava/lang/String;
    .param p4, "desireLongName"    # Z

    .prologue
    .line 2117
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onRadioAvailable()V
    .locals 0

    .prologue
    .line 832
    return-void
.end method

.method public openIccApplication(ILandroid/os/Message;)V
    .locals 0
    .param p1, "application"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1282
    return-void
.end method

.method public pullLceData(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 914
    return-void
.end method

.method public queryCDMANetWorkRegistrationState(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2025
    return-void
.end method

.method public queryCDMANetworkInfo(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1972
    return-void
.end method

.method public queryCDMASmsAndPBStatus(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2022
    return-void
.end method

.method public queryCellBroadcastConfigInfo(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1600
    return-void
.end method

.method public queryNetworkLock(ILandroid/os/Message;)V
    .locals 0
    .param p1, "categrory"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1300
    return-void
.end method

.method public queryPhbStorageInfo(ILandroid/os/Message;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1479
    return-void
.end method

.method public queryStkSetUpMenuFromMD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2268
    return-void
.end method

.method public queryUPBCapability(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1497
    return-void
.end method

.method public readUPBGasList(IILandroid/os/Message;)V
    .locals 0
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 1506
    return-void
.end method

.method public readUPBGrpEntry(ILandroid/os/Message;)V
    .locals 0
    .param p1, "adnIndex"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1509
    return-void
.end method

.method public registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 671
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 672
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mT53ClirInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 670
    return-void
.end method

.method public registerForAbnormalEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2089
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2090
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mAbnormalEventRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 2088
    return-void
.end method

.method public registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 174
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 176
    .local v0, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 179
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    new-instance v1, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 173
    return-void

    .line 176
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public registerForCallAccepted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1984
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1985
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mAcceptedRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1983
    return-void
.end method

.method public registerForCallForwardingInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 1183
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1184
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mCallForwardingInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1186
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mCfuReturnValue:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 1187
    new-instance v1, Landroid/os/AsyncResult;

    iget-object v2, p0, Lcom/android/internal/telephony/BaseCommands;->mCfuReturnValue:Ljava/lang/Object;

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 1182
    :cond_0
    return-void
.end method

.method public registerForCallInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1845
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1846
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mCallInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1844
    return-void
.end method

.method public registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 233
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 235
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 232
    return-void
.end method

.method public registerForCallWaitingInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 594
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 595
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mCallWaitingInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 593
    return-void
.end method

.method public registerForCdmaCardType(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 1395
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1396
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaCardTypeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1398
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaCardTypeValue:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 1399
    new-instance v1, Landroid/os/AsyncResult;

    iget-object v2, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaCardTypeValue:Ljava/lang/Object;

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 1394
    :cond_0
    return-void
.end method

.method public registerForCdmaImsiReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2209
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2210
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaImsiReadyRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 2208
    return-void
.end method

.method public registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 627
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 628
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mOtaProvisionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 626
    return-void
.end method

.method public registerForCdmaPrlChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 726
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 727
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaPrlChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 725
    return-void
.end method

.method public registerForCdmaSubscriptionChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 715
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 716
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSubscriptionChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 714
    return-void
.end method

.method public registerForCellInfoList(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 848
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 849
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mRilCellInfoListRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 847
    return-void
.end method

.method public registerForCipherIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1174
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1175
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mCipherIndicationRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1173
    return-void
.end method

.method public registerForCommonSlotNoChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1412
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1413
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mCommonSlotNoChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1411
    return-void
.end method

.method public registerForDataNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 257
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 259
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mDataNetworkStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 256
    return-void
.end method

.method public registerForDataNetworkTypeChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2148
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2149
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mDataNetworkTypeChangedRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 2147
    return-void
.end method

.method public registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 583
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 584
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 582
    return-void
.end method

.method public registerForEconfResult(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1836
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1837
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mEconfResultRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1835
    return-void
.end method

.method public registerForEconfSrvcc(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1826
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1827
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mEconfSrvccRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1825
    return-void
.end method

.method public registerForEfCspPlmnModeBitChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1472
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mEfCspPlmnModeBitRegistrant:Landroid/os/Registrant;

    .line 1471
    return-void
.end method

.method public registerForEmergencyBearerSupportInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1910
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1911
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mEmergencyBearerSupportInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1909
    return-void
.end method

.method public registerForEngModeNetworkInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2100
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2101
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mEngModeNetworkInfoRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 2099
    return-void
.end method

.method public registerForEpsNetworkFeatureInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1874
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1875
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mEpsNetworkFeatureInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1873
    return-void
.end method

.method public registerForEpsNetworkFeatureSupport(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1815
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1816
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mEpsNetworkFeatureSupportRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1814
    return-void
.end method

.method public registerForEusimReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1421
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1422
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mEusimReady:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1420
    return-void
.end method

.method public registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 737
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 738
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 736
    return-void
.end method

.method public registerForFemtoCellInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1677
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1679
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mFemtoCellInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1676
    return-void
.end method

.method public registerForGetAvailableNetworksDone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1657
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1658
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mGetAvailableNetworkDoneRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1656
    return-void
.end method

.method public registerForGmssRatChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2135
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2136
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mGmssRatChangedRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 2134
    return-void
.end method

.method public registerForHardwareConfigChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 748
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 749
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mHardwareConfigChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 747
    return-void
.end method

.method public registerForIMEILock(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1638
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1639
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mImeiLockRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1637
    return-void
.end method

.method public registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 491
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 492
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 490
    return-void
.end method

.method public registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 280
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 281
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 279
    return-void
.end method

.method public registerForImsDisable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1709
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1710
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mImsDisableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1708
    return-void
.end method

.method public registerForImsDisableDone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1727
    return-void
.end method

.method public registerForImsEnable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1700
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1701
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mImsEnableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1699
    return-void
.end method

.method public registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 144
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 145
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 143
    return-void
.end method

.method public registerForImsRegistrationInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1718
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1719
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mImsRegistrationInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1717
    return-void
.end method

.method public registerForImsiRefreshDone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2192
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2193
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mImsiRefreshDoneRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 2191
    return-void
.end method

.method public registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 559
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 560
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 558
    return-void
.end method

.method public registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 548
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 549
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 547
    return-void
.end method

.method public registerForIratStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2161
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2162
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mIratStateChangeRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 2160
    return-void
.end method

.method public registerForLceInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 919
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mLceInfoRegistrant:Landroid/os/Registrant;

    .line 918
    return-void
.end method

.method public registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 660
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 661
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mLineControlInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 659
    return-void
.end method

.method public registerForLteAccessStratumState(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1540
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1541
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mLteAccessStratumStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1539
    return-void
.end method

.method public registerForMccMncChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2256
    const-string/jumbo v1, "RILJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerForMccMncChange h="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " w="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2257
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2258
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mMccMncChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 2255
    return-void
.end method

.method public registerForMelockChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1772
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1773
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mMelockRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1771
    return-void
.end method

.method public registerForMoDataBarringInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1883
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1884
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mMoDataBarringInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1882
    return-void
.end method

.method public registerForNeighboringInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1611
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1612
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mNeighboringInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1610
    return-void
.end method

.method public registerForNetworkExsit(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2313
    const-string/jumbo v1, "RILJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerForNetworkExsit h="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " w="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2315
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mNetworkExistRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 2312
    return-void
.end method

.method public registerForNetworkInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1620
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1621
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mNetworkInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1619
    return-void
.end method

.method public registerForNetworkTypeChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2012
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2013
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mNetworkTypeChangedRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 2011
    return-void
.end method

.method public registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 194
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 196
    .local v0, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mNotAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 199
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 200
    new-instance v1, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 193
    return-void

    .line 196
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 638
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 639
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mNumberInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 637
    return-void
.end method

.method public registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 214
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 216
    .local v0, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 217
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mOffOrNotAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 219
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    monitor-exit v2

    .line 213
    return-void

    .line 220
    :cond_0
    :try_start_1
    new-instance v1, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 216
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 154
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 156
    .local v0, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 159
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    new-instance v1, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 153
    return-void

    .line 156
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public registerForPhbReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1489
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1490
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mPhbReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1488
    return-void
.end method

.method public registerForPsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1683
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1685
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mPsNetworkStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1682
    return-void
.end method

.method public registerForRacUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1440
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1442
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mRacUpdateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1439
    return-void
.end method

.method public registerForRadioCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 896
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 897
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mPhoneRadioCapabilityChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 895
    return-void
.end method

.method public registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 128
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 130
    .local v0, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mRadioStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 132
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 127
    return-void

    .line 130
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 649
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 650
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mRedirNumInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 648
    return-void
.end method

.method public registerForRemoveRestrictEutran(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1433
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1434
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mRemoveRestrictEutranRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1432
    return-void
.end method

.method public registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 704
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 705
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 703
    return-void
.end method

.method public registerForResetAttachApn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1449
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1450
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mResetAttachApnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1448
    return-void
.end method

.method public registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 5
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 762
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 763
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mRilConnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 764
    iget v1, p0, Lcom/android/internal/telephony/BaseCommands;->mRilVersion:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 765
    new-instance v1, Landroid/os/AsyncResult;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lcom/android/internal/telephony/BaseCommands;->mRilVersion:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v1, v4, v2, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 761
    :cond_0
    return-void
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 693
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 694
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 692
    return-void
.end method

.method public registerForSessionChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1288
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1289
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mSessionChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1287
    return-void
.end method

.method public registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 605
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 606
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 604
    return-void
.end method

.method public registerForSimMissing(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1328
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1329
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mSimMissing:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1327
    return-void
.end method

.method public registerForSimPlugIn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1372
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1373
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mSimPlugInRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1371
    return-void
.end method

.method public registerForSimPlugOut(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1363
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1364
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mSimPlugOutRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1362
    return-void
.end method

.method public registerForSimRecovery(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1336
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1337
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mSimRecovery:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1335
    return-void
.end method

.method public registerForSmsReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1553
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1554
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1556
    iget-boolean v1, p0, Lcom/android/internal/telephony/BaseCommands;->mIsSmsReady:Z

    if-eqz v1, :cond_0

    .line 1558
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 1552
    :cond_0
    return-void
.end method

.method public registerForSrvccHandoverInfoIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1901
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1902
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mSrvccHandoverInfoIndicationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1900
    return-void
.end method

.method public registerForSrvccStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 858
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 860
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mSrvccStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 857
    return-void
.end method

.method public registerForSsacBarringInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1892
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1893
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mSsacBarringInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1891
    return-void
.end method

.method public registerForSubscriptionStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 775
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 776
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mSubscriptionStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 774
    return-void
.end method

.method public registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 682
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 683
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mT53AudCntrlInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 681
    return-void
.end method

.method public registerForTrayPlugIn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1381
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1382
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mTrayPlugInRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1380
    return-void
.end method

.method public registerForViaGpsEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1995
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1996
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mViaGpsEvent:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1994
    return-void
.end method

.method public registerForVirtualSimOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1354
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1355
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mVirtualSimOff:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1353
    return-void
.end method

.method public registerForVirtualSimOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1345
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1346
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mVirtualSimOn:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1344
    return-void
.end method

.method public registerForVoiceNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 245
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 247
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mVoiceNetworkStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 244
    return-void
.end method

.method public registerForVoiceRadioTechChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 269
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 270
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mVoiceRadioTechChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 268
    return-void
.end method

.method public registerForVtRingInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1260
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1261
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mVtRingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1259
    return-void
.end method

.method public registerForVtStatusInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1251
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1252
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mVtStatusInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1250
    return-void
.end method

.method public registerSetDataAllowed(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1458
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1459
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mDataAllowedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1457
    return-void
.end method

.method public removeCellBroadcastMsg(IILandroid/os/Message;)V
    .locals 0
    .param p1, "channelId"    # I
    .param p2, "serialId"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 1603
    return-void
.end method

.method public removeConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "confCallId"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "callIdToRemove"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 1856
    return-void
.end method

.method public replaceVtCall(ILandroid/os/Message;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1272
    return-void
.end method

.method public requestAGPSGetMpcIpPort(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2031
    return-void
.end method

.method public requestAGPSSetMpcIpPort(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 2034
    return-void
.end method

.method public requestAGPSTcpConnected(ILandroid/os/Message;)V
    .locals 0
    .param p1, "connected"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 2037
    return-void
.end method

.method public requestDeactivateLinkDownPdn(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2185
    return-void
.end method

.method public requestSetEtsDev(ILandroid/os/Message;)V
    .locals 0
    .param p1, "dev"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 2028
    return-void
.end method

.method public requestSetPsActiveSlot(ILandroid/os/Message;)V
    .locals 0
    .param p1, "psSlot"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2176
    return-void
.end method

.method public requestShutdown(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 883
    return-void
.end method

.method public requestSwitchHPF(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "enableHPF"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1963
    return-void
.end method

.method public resumeCall(ILandroid/os/Message;)V
    .locals 0
    .param p1, "callIdToResume"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1863
    return-void
.end method

.method public selectFemtoCell(Lcom/mediatek/internal/telephony/FemtoCellInfo;Landroid/os/Message;)V
    .locals 0
    .param p1, "femtocell"    # Lcom/mediatek/internal/telephony/FemtoCellInfo;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1675
    return-void
.end method

.method public sendBTSIMProfile(IILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "nAction"    # I
    .param p2, "nType"    # I
    .param p3, "strData"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 1466
    return-void
.end method

.method public sendCNAPSS(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "cnapssString"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1276
    return-void
.end method

.method public sendSMSExpectMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 829
    return-void
.end method

.method public sendScreenState(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 1919
    return-void
.end method

.method public setArsiReportThreshold(ILandroid/os/Message;)V
    .locals 0
    .param p1, "threshold"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2008
    return-void
.end method

.method public setAvoidSYS(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "avoidSYS"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1966
    return-void
.end method

.method public setCLIP(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1277
    return-void
.end method

.method public setCallIndication(IIILandroid/os/Message;)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "callId"    # I
    .param p3, "seqNumber"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 1241
    return-void
.end method

.method public setCdmaRegistrationSuspendEnabled(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2247
    return-void
.end method

.method public setCellBroadcastChannelConfigInfo(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "config"    # Ljava/lang/String;
    .param p2, "cb_set_type"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 1594
    return-void
.end method

.method public setCellBroadcastLanguageConfigInfo(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "config"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1597
    return-void
.end method

.method public setDataAllowed(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "allowed"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 879
    return-void
.end method

.method public setDataCentric(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1922
    return-void
.end method

.method public setDataOnToMD(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1430
    return-void
.end method

.method public setEccServiceCategory(I)V
    .locals 0
    .param p1, "serviceCategory"    # I

    .prologue
    .line 1243
    return-void
.end method

.method public setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 501
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    .line 500
    return-void
.end method

.method public setEtws(ILandroid/os/Message;)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1582
    return-void
.end method

.method public setFDMode(IIILandroid/os/Message;)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "parameter1"    # I
    .param p3, "parameter2"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 1804
    return-void
.end method

.method public setIMSEnabled(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1726
    return-void
.end method

.method public setImsCallStatus(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "existed"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1926
    return-void
.end method

.method public setInitialAttachApn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0
    .param p1, "apn"    # Ljava/lang/String;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "authType"    # I
    .param p4, "username"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "obj"    # Ljava/lang/Object;
    .param p7, "result"    # Landroid/os/Message;

    .prologue
    .line 1809
    return-void
.end method

.method public setInstanceId(I)V
    .locals 0
    .param p1, "instanceId"    # I

    .prologue
    .line 2232
    return-void
.end method

.method public setInvalidSimInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1629
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1630
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mInvalidSimInfoRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1628
    return-void
.end method

.method public setLocalCallHold(Z)V
    .locals 0
    .param p1, "lchStatus"    # Z

    .prologue
    .line 931
    return-void
.end method

.method public setLteAccessStratumReport(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1533
    return-void
.end method

.method public setLteUplinkDataTransfer(IILandroid/os/Message;)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "interfaceId"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 1536
    return-void
.end method

.method public setMdnNumber(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "mdn"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2040
    return-void
.end method

.method public setMeid(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "meid"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2005
    return-void
.end method

.method public setModemPower(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "power"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1164
    return-void
.end method

.method public setNetworkLock(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "catagory"    # I
    .param p2, "lockop"    # I
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "data_imsi"    # Ljava/lang/String;
    .param p5, "gid1"    # Ljava/lang/String;
    .param p6, "gid2"    # Ljava/lang/String;
    .param p7, "response"    # Landroid/os/Message;

    .prologue
    .line 1304
    return-void
.end method

.method public setNetworkSelectionModeManualWithAct(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "act"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 1647
    return-void
.end method

.method public setNetworkSelectionModeSemiAutomatic(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "act"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 1650
    return-void
.end method

.method public setOnBipProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1115
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mBipProCmdRegistrant:Landroid/os/Registrant;

    .line 1114
    return-void
.end method

.method public setOnCallRelatedSuppSvc(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1197
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCallRelatedSuppSvcRegistrant:Landroid/os/Registrant;

    .line 1196
    return-void
.end method

.method public setOnCallRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 515
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRingRegistrant:Landroid/os/Registrant;

    .line 514
    return-void
.end method

.method public setOnCatCallSetUp(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 447
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatCallSetUpRegistrant:Landroid/os/Registrant;

    .line 446
    return-void
.end method

.method public setOnCatCcAlphaNotify(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 538
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatCcAlphaRegistrant:Landroid/os/Registrant;

    .line 537
    return-void
.end method

.method public setOnCatEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 434
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatEventRegistrant:Landroid/os/Registrant;

    .line 433
    return-void
.end method

.method public setOnCatProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 421
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatProCmdRegistrant:Landroid/os/Registrant;

    .line 420
    return-void
.end method

.method public setOnCatSendSmsResult(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 460
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatSendSmsResultRegistrant:Landroid/os/Registrant;

    .line 459
    return-void
.end method

.method public setOnCatSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 408
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatSessionEndRegistrant:Landroid/os/Registrant;

    .line 407
    return-void
.end method

.method public setOnCdmaSignalFade(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2275
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSignalFadeRegistrant:Landroid/os/Registrant;

    .line 2274
    return-void
.end method

.method public setOnCdmaToneSignal(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2290
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaToneSignalsRegistrant:Landroid/os/Registrant;

    .line 2289
    return-void
.end method

.method public setOnEtwsNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1586
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mEtwsNotificationRegistrant:Landroid/os/Registrant;

    .line 1585
    return-void
.end method

.method public setOnIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 496
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/BaseCommands;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 495
    return-void
.end method

.method public setOnIccSmsFull(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 469
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    .line 472
    iget-boolean v0, p0, Lcom/android/internal/telephony/BaseCommands;->mIsSmsSimFull:Z

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 476
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/BaseCommands;->mIsSmsSimFull:Z

    .line 468
    :cond_0
    return-void
.end method

.method public setOnIncomingCallIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1205
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mIncomingCallIndicationRegistrant:Landroid/os/Registrant;

    .line 1204
    return-void
.end method

.method public setOnMeSmsFull(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1567
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mMeSmsFullRegistrant:Landroid/os/Registrant;

    .line 1566
    return-void
.end method

.method public setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 369
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNITZTimeRegistrant:Landroid/os/Registrant;

    .line 368
    return-void
.end method

.method public setOnNewCdmaSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 304
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    .line 303
    return-void
.end method

.method public setOnNewGsmBroadcastSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 317
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    .line 316
    return-void
.end method

.method public setOnNewGsmSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 291
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmSmsRegistrant:Landroid/os/Registrant;

    .line 290
    return-void
.end method

.method public setOnPlmnChangeNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1733
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1734
    .local v0, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/android/internal/telephony/BaseCommands;->mWPMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 1735
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mPlmnChangeNotificationRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1737
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mEcopsReturnValue:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 1739
    new-instance v1, Landroid/os/AsyncResult;

    iget-object v3, p0, Lcom/android/internal/telephony/BaseCommands;->mEcopsReturnValue:Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v4, v3, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 1740
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mEcopsReturnValue:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 1732
    return-void

    .line 1734
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setOnRegistrationSuspended(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1752
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mWPMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 1753
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRegistrationSuspendedRegistrant:Landroid/os/Registrant;

    .line 1755
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mEmsrReturnValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1757
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRegistrationSuspendedRegistrant:Landroid/os/Registrant;

    .line 1758
    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p0, Lcom/android/internal/telephony/BaseCommands;->mEmsrReturnValue:Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v4, v3, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1757
    invoke-virtual {v0, v2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 1759
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mEmsrReturnValue:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 1751
    return-void

    .line 1752
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 570
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRestrictedStateRegistrant:Landroid/os/Registrant;

    .line 569
    return-void
.end method

.method public setOnSignalStrengthUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 356
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    .line 355
    return-void
.end method

.method public setOnSmsOnSim(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 330
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsOnSimRegistrant:Landroid/os/Registrant;

    .line 329
    return-void
.end method

.method public setOnSmsStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 343
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsStatusRegistrant:Landroid/os/Registrant;

    .line 342
    return-void
.end method

.method public setOnSpeechCodecInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1227
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSpeechCodecInfoRegistrant:Landroid/os/Registrant;

    .line 1226
    return-void
.end method

.method public setOnSs(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 528
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSsRegistrant:Landroid/os/Registrant;

    .line 527
    return-void
.end method

.method public setOnStkCallCtrl(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1154
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mStkCallCtrlRegistrant:Landroid/os/Registrant;

    .line 1153
    return-void
.end method

.method public setOnStkEvdlCall(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1134
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mStkEvdlCallRegistrant:Landroid/os/Registrant;

    .line 1133
    return-void
.end method

.method public setOnStkSetupMenuReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1144
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mStkSetupMenuResetRegistrant:Landroid/os/Registrant;

    .line 1143
    return-void
.end method

.method public setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 395
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSsnRegistrant:Landroid/os/Registrant;

    .line 394
    return-void
.end method

.method public setOnUSSD(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 382
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mUSSDRegistrant:Landroid/os/Registrant;

    .line 381
    return-void
.end method

.method public setOnUnsolOemHookRaw(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 610
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    .line 609
    return-void
.end method

.method public setOnUtkEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2065
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mUtkEventRegistrant:Landroid/os/Registrant;

    .line 2064
    return-void
.end method

.method public setOnUtkProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2055
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mUtkProCmdRegistrant:Landroid/os/Registrant;

    .line 2054
    return-void
.end method

.method public setOnUtkSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2045
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mUtkSessionEndRegistrant:Landroid/os/Registrant;

    .line 2044
    return-void
.end method

.method public setOplmn(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "oplmnInfo"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1975
    return-void
.end method

.method public setPOLEntry(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "numeric"    # Ljava/lang/String;
    .param p3, "nAct"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 1669
    return-void
.end method

.method public setPhoneBookMemStorage(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "storage"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 1521
    return-void
.end method

.method public setRadioCapability(Lcom/android/internal/telephony/RadioCapability;Landroid/os/Message;)V
    .locals 0
    .param p1, "rc"    # Lcom/android/internal/telephony/RadioCapability;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 891
    return-void
.end method

.method protected setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V
    .locals 3
    .param p1, "newState"    # Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .prologue
    .line 797
    iget-object v2, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 798
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 799
    .local v0, "oldState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    iput-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 801
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    monitor-exit v2

    .line 803
    return-void

    .line 806
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mRadioStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 808
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 813
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 814
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mNotAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 817
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 821
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_7

    :cond_4
    :goto_2
    monitor-exit v2

    .line 794
    return-void

    .line 809
    :cond_5
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 810
    invoke-virtual {p0}, Lcom/android/internal/telephony/BaseCommands;->onRadioAvailable()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 797
    .end local v0    # "oldState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 818
    .restart local v0    # "oldState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :cond_6
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_1

    .line 822
    :cond_7
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    .line 821
    if-eqz v1, :cond_4

    .line 824
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mOffOrNotAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public setRegistrationSuspendEnabled(ILandroid/os/Message;)V
    .locals 0
    .param p1, "enabled"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2239
    return-void
.end method

.method public setRemoveRestrictEutranMode(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1431
    return-void
.end method

.method public setResumeCdmaRegistration(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2251
    return-void
.end method

.method public setResumeRegistration(ILandroid/os/Message;)V
    .locals 0
    .param p1, "sessionId"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2243
    return-void
.end method

.method public setScri(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "forceRelease"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1801
    return-void
.end method

.method public setScriResult(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1794
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mScriResultRegistrant:Landroid/os/Registrant;

    .line 1793
    return-void
.end method

.method public setSpeechCodecInfo(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1246
    return-void
.end method

.method public setSrvccCallContextTransfer(I[Lcom/mediatek/internal/telephony/SrvccCallContext;)V
    .locals 0
    .param p1, "numberOfCall"    # I
    .param p2, "callList"    # [Lcom/mediatek/internal/telephony/SrvccCallContext;

    .prologue
    .line 1936
    return-void
.end method

.method public setStkEvdlCallByAP(ILandroid/os/Message;)V
    .locals 0
    .param p1, "enabled"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1128
    return-void
.end method

.method public setStkUtkMode(ILandroid/os/Message;)V
    .locals 0
    .param p1, "stkUtkMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2226
    return-void
.end method

.method public setSvlteRatMode(IIIIIZLandroid/os/Message;)V
    .locals 0
    .param p1, "radioTechMode"    # I
    .param p2, "preSvlteMode"    # I
    .param p3, "svlteMode"    # I
    .param p4, "preRoamingMode"    # I
    .param p5, "roamingMode"    # I
    .param p6, "is3GDualModeCard"    # Z
    .param p7, "response"    # Landroid/os/Message;

    .prologue
    .line 2221
    return-void
.end method

.method public setTrm(ILandroid/os/Message;)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1730
    return-void
.end method

.method public setUiccSubscription(IIIILandroid/os/Message;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "appIndex"    # I
    .param p3, "subId"    # I
    .param p4, "subStatus"    # I
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 1169
    return-void
.end method

.method public setUiccSubscription(IZLandroid/os/Message;)V
    .locals 0
    .param p1, "appIndex"    # I
    .param p2, "activate"    # Z
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 876
    return-void
.end method

.method public setViaTRM(ILandroid/os/Message;)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1957
    return-void
.end method

.method public setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "radioTechnology"    # Ljava/lang/String;
    .param p2, "profile"    # Ljava/lang/String;
    .param p3, "apn"    # Ljava/lang/String;
    .param p4, "user"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "authType"    # Ljava/lang/String;
    .param p7, "protocol"    # Ljava/lang/String;
    .param p8, "result"    # Landroid/os/Message;

    .prologue
    .line 1784
    return-void
.end method

.method public setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "radioTechnology"    # Ljava/lang/String;
    .param p2, "profile"    # Ljava/lang/String;
    .param p3, "apn"    # Ljava/lang/String;
    .param p4, "user"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "authType"    # Ljava/lang/String;
    .param p7, "protocol"    # Ljava/lang/String;
    .param p8, "interfaceId"    # Ljava/lang/String;
    .param p9, "result"    # Landroid/os/Message;

    .prologue
    .line 1789
    return-void
.end method

.method public startLceService(IZLandroid/os/Message;)V
    .locals 0
    .param p1, "reportIntervalMs"    # I
    .param p2, "pullMode"    # Z
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 906
    return-void
.end method

.method public stopLceService(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 910
    return-void
.end method

.method public switchAntenna(II)V
    .locals 0
    .param p1, "callState"    # I
    .param p2, "ratMode"    # I

    .prologue
    .line 2303
    return-void
.end method

.method public switchCardType(I)V
    .locals 0
    .param p1, "cardtype"    # I

    .prologue
    .line 2305
    return-void
.end method

.method public syncNotifyDataCallList(Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "dcList"    # Landroid/os/AsyncResult;

    .prologue
    .line 2180
    return-void
.end method

.method public testingEmergencyCall()V
    .locals 0

    .prologue
    .line 869
    return-void
.end method

.method public unSetInvalidSimInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1634
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mInvalidSimInfoRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1633
    return-void
.end method

.method public unSetOnBipProactiveCmd(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 1120
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mBipProCmdRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mBipProCmdRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 1121
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mBipProCmdRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 1122
    iput-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mBipProCmdRegistrant:Landroid/os/Registrant;

    .line 1119
    :cond_0
    return-void
.end method

.method public unSetOnCallRelatedSuppSvc(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCallRelatedSuppSvcRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 1200
    return-void
.end method

.method public unSetOnCallRing(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 520
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRingRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRingRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 521
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRingRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 522
    iput-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mRingRegistrant:Landroid/os/Registrant;

    .line 519
    :cond_0
    return-void
.end method

.method public unSetOnCatCallSetUp(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 452
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatCallSetUpRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatCallSetUpRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 453
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatCallSetUpRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 454
    iput-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mCatCallSetUpRegistrant:Landroid/os/Registrant;

    .line 451
    :cond_0
    return-void
.end method

.method public unSetOnCatCcAlphaNotify(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatCcAlphaRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 542
    return-void
.end method

.method public unSetOnCatEvent(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 439
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatEventRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatEventRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 440
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatEventRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 441
    iput-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mCatEventRegistrant:Landroid/os/Registrant;

    .line 438
    :cond_0
    return-void
.end method

.method public unSetOnCatProactiveCmd(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 426
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatProCmdRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatProCmdRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 427
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatProCmdRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 428
    iput-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mCatProCmdRegistrant:Landroid/os/Registrant;

    .line 425
    :cond_0
    return-void
.end method

.method public unSetOnCatSendSmsResult(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatSendSmsResultRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 463
    return-void
.end method

.method public unSetOnCatSessionEnd(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 413
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatSessionEndRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatSessionEndRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatSessionEndRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 415
    iput-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mCatSessionEndRegistrant:Landroid/os/Registrant;

    .line 412
    :cond_0
    return-void
.end method

.method public unSetOnCdmaSignalFade(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 2280
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSignalFadeRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSignalFadeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 2281
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSignalFadeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 2282
    iput-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSignalFadeRegistrant:Landroid/os/Registrant;

    .line 2279
    :cond_0
    return-void
.end method

.method public unSetOnCdmaToneSignal(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 2295
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaToneSignalsRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaToneSignalsRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 2296
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaToneSignalsRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 2297
    iput-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaToneSignalsRegistrant:Landroid/os/Registrant;

    .line 2294
    :cond_0
    return-void
.end method

.method public unSetOnEtwsNotification(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1590
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mEtwsNotificationRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 1589
    return-void
.end method

.method public unSetOnIccSmsFull(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 483
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 484
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 485
    iput-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    .line 482
    :cond_0
    return-void
.end method

.method public unSetOnMeSmsFull(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mMeSmsFullRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 1570
    return-void
.end method

.method public unSetOnNITZTime(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 374
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNITZTimeRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNITZTimeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNITZTimeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 376
    iput-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mNITZTimeRegistrant:Landroid/os/Registrant;

    .line 373
    :cond_0
    return-void
.end method

.method public unSetOnNewCdmaSms(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 309
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 311
    iput-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    .line 308
    :cond_0
    return-void
.end method

.method public unSetOnNewGsmBroadcastSms(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 322
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 324
    iput-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    .line 321
    :cond_0
    return-void
.end method

.method public unSetOnNewGsmSms(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 296
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmSmsRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmSmsRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmSmsRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 298
    iput-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmSmsRegistrant:Landroid/os/Registrant;

    .line 295
    :cond_0
    return-void
.end method

.method public unSetOnPlmnChangeNotification(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1746
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mWPMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 1747
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mPlmnChangeNotificationRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1745
    return-void

    .line 1746
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unSetOnRegistrationSuspended(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1765
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mWPMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 1766
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRegistrationSuspendedRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1764
    return-void

    .line 1765
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unSetOnRestrictedStateChanged(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 575
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRestrictedStateRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRestrictedStateRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 576
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRestrictedStateRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 577
    iput-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mRestrictedStateRegistrant:Landroid/os/Registrant;

    .line 574
    :cond_0
    return-void
.end method

.method public unSetOnSignalStrengthUpdate(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 361
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 363
    iput-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    .line 360
    :cond_0
    return-void
.end method

.method public unSetOnSmsOnSim(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 335
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsOnSimRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsOnSimRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsOnSimRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 337
    iput-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsOnSimRegistrant:Landroid/os/Registrant;

    .line 334
    :cond_0
    return-void
.end method

.method public unSetOnSmsStatus(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 348
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsStatusRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsStatusRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsStatusRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 350
    iput-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsStatusRegistrant:Landroid/os/Registrant;

    .line 347
    :cond_0
    return-void
.end method

.method public unSetOnSpeechCodecInfo(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 1232
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSpeechCodecInfoRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSpeechCodecInfoRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 1233
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSpeechCodecInfoRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 1234
    iput-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mSpeechCodecInfoRegistrant:Landroid/os/Registrant;

    .line 1231
    :cond_0
    return-void
.end method

.method public unSetOnSs(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSsRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 532
    return-void
.end method

.method public unSetOnStkCallCtrl(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mStkCallCtrlRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 1158
    return-void
.end method

.method public unSetOnStkEvdlCall(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mStkEvdlCallRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 1138
    return-void
.end method

.method public unSetOnStkSetupMenuReset(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mStkSetupMenuResetRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 1148
    return-void
.end method

.method public unSetOnSuppServiceNotification(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 400
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSsnRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSsnRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSsnRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 402
    iput-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mSsnRegistrant:Landroid/os/Registrant;

    .line 399
    :cond_0
    return-void
.end method

.method public unSetOnUSSD(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 387
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mUSSDRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mUSSDRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 388
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mUSSDRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 389
    iput-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mUSSDRegistrant:Landroid/os/Registrant;

    .line 386
    :cond_0
    return-void
.end method

.method public unSetOnUnsolOemHookRaw(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 614
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 615
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 616
    iput-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    .line 613
    :cond_0
    return-void
.end method

.method public unSetOnUtkEvent(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2070
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mUtkEventRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 2069
    return-void
.end method

.method public unSetOnUtkProactiveCmd(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2060
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mUtkProCmdRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 2059
    return-void
.end method

.method public unSetOnUtkSessionEnd(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2050
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mUtkSessionEndRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 2049
    return-void
.end method

.method public unSetScriResult(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1798
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mScriResultRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 1797
    return-void
.end method

.method public unregisterForAbnormalEvent(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2094
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mAbnormalEventRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2093
    return-void
.end method

.method public unregisterForAvailable(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 187
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 186
    return-void

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterForCallAccepted(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1990
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mAcceptedRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1989
    return-void
.end method

.method public unregisterForCallForwardingInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCallForwardingInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1192
    return-void
.end method

.method public unregisterForCallInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1850
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCallInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1849
    return-void
.end method

.method public unregisterForCallStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 239
    return-void
.end method

.method public unregisterForCallWaitingInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCallWaitingInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 599
    return-void
.end method

.method public unregisterForCdmaCardType(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaCardTypeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1407
    return-void
.end method

.method public unregisterForCdmaImsiReady(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2215
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaImsiReadyRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2214
    return-void
.end method

.method public unregisterForCdmaOtaProvision(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mOtaProvisionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 632
    return-void
.end method

.method public unregisterForCdmaPrlChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 732
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaPrlChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 731
    return-void
.end method

.method public unregisterForCdmaSubscriptionChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSubscriptionChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 720
    return-void
.end method

.method public unregisterForCellInfoList(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 853
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilCellInfoListRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 852
    return-void
.end method

.method public unregisterForCipherIndication(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCipherIndicationRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1178
    return-void
.end method

.method public unregisterForCommonSlotNoChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mCommonSlotNoChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1416
    return-void
.end method

.method public unregisterForDataNetworkStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mDataNetworkStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 263
    return-void
.end method

.method public unregisterForDataNetworkTypeChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2154
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mDataNetworkTypeChangedRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2153
    return-void
.end method

.method public unregisterForDisplayInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 588
    return-void
.end method

.method public unregisterForEconfResult(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1841
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mEconfResultRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1840
    return-void
.end method

.method public unregisterForEconfSrvcc(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1831
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mEconfSrvccRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1830
    return-void
.end method

.method public unregisterForEfCspPlmnModeBitChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1476
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mEfCspPlmnModeBitRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 1475
    return-void
.end method

.method public unregisterForEmergencyBearerSupportInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1915
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mEmergencyBearerSupportInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1914
    return-void
.end method

.method public unregisterForEngModeNetworkInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2106
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mEngModeNetworkInfoRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2105
    return-void
.end method

.method public unregisterForEpsNetworkFeatureInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1879
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mEpsNetworkFeatureInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1878
    return-void
.end method

.method public unregisterForEpsNetworkFeatureSupport(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1820
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mEpsNetworkFeatureSupportRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1819
    return-void
.end method

.method public unregisterForEusimReady(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mEusimReady:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1425
    return-void
.end method

.method public unregisterForExitEmergencyCallbackMode(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 743
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 742
    return-void
.end method

.method public unregisterForFemtoCellInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1695
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mFemtoCellInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1694
    return-void
.end method

.method public unregisterForGetAvailableNetworksDone(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1662
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mGetAvailableNetworkDoneRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1661
    return-void
.end method

.method public unregisterForGmssRatChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2141
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mGmssRatChangedRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2140
    return-void
.end method

.method public unregisterForHardwareConfigChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 754
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mHardwareConfigChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 753
    return-void
.end method

.method public unregisterForIMEILock(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1643
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mImeiLockRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1642
    return-void
.end method

.method public unregisterForIccRefresh(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 505
    return-void
.end method

.method public unregisterForIccStatusChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 285
    return-void
.end method

.method public unregisterForImsDisable(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1714
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mImsDisableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1713
    return-void
.end method

.method public unregisterForImsDisableDone(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1728
    return-void
.end method

.method public unregisterForImsEnable(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1705
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mImsEnableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1704
    return-void
.end method

.method public unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 148
    return-void
.end method

.method public unregisterForImsRegistrationInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1723
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mImsRegistrationInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1722
    return-void
.end method

.method public unregisterForImsiRefreshDone(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2198
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mImsiRefreshDoneRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2197
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 564
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 553
    return-void
.end method

.method public unregisterForIratStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2167
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mIratStateChangeRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2166
    return-void
.end method

.method public unregisterForLceInfo(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 924
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mLceInfoRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mLceInfoRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 925
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mLceInfoRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 926
    iput-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mLceInfoRegistrant:Landroid/os/Registrant;

    .line 923
    :cond_0
    return-void
.end method

.method public unregisterForLineControlInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mLineControlInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 665
    return-void
.end method

.method public unregisterForLteAccessStratumState(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1545
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mLteAccessStratumStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1544
    return-void
.end method

.method public unregisterForMccMncChange(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2263
    const-string/jumbo v0, "RILJ"

    const-string/jumbo v1, "unregisterForMccMncChange"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2264
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mMccMncChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2262
    return-void
.end method

.method public unregisterForMelockChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1777
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mMelockRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1776
    return-void
.end method

.method public unregisterForMoDataBarringInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1888
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mMoDataBarringInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1887
    return-void
.end method

.method public unregisterForNeighboringInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1616
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNeighboringInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1615
    return-void
.end method

.method public unregisterForNetworkExsit(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2320
    const-string/jumbo v0, "RILJ"

    const-string/jumbo v1, "registerForNetworkExsit"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNetworkExistRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2319
    return-void
.end method

.method public unregisterForNetworkInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1625
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNetworkInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1624
    return-void
.end method

.method public unregisterForNetworkTypeChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2018
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNetworkTypeChangedRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2017
    return-void
.end method

.method public unregisterForNotAvailable(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 207
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNotAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 206
    return-void

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterForNumberInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mNumberInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 643
    return-void
.end method

.method public unregisterForOffOrNotAvailable(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 226
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mOffOrNotAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 225
    return-void

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterForOn(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 166
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 165
    return-void

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterForPhbReady(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1494
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mPhbReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1493
    return-void
.end method

.method public unregisterForPsNetworkStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1689
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mPsNetworkStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1688
    return-void
.end method

.method public unregisterForRacUpdate(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1445
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRacUpdateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1444
    return-void
.end method

.method public unregisterForRadioCapabilityChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 902
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mPhoneRadioCapabilityChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 901
    return-void
.end method

.method public unregisterForRadioStateChanged(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 138
    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRadioStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 137
    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRedirNumInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 654
    return-void
.end method

.method public unregisterForRemoveRestrictEutran(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRemoveRestrictEutranRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1436
    return-void
.end method

.method public unregisterForResendIncallMute(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 710
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 709
    return-void
.end method

.method public unregisterForResetAttachApn(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1454
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mResetAttachApnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1453
    return-void
.end method

.method public unregisterForRilConnected(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 771
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilConnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 770
    return-void
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 699
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 698
    return-void
.end method

.method public unregisterForSessionChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSessionChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1293
    return-void
.end method

.method public unregisterForSignalInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 621
    return-void
.end method

.method public unregisterForSimMissing(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSimMissing:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1331
    return-void
.end method

.method public unregisterForSimPlugIn(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1377
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSimPlugInRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1376
    return-void
.end method

.method public unregisterForSimPlugOut(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1368
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSimPlugOutRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1367
    return-void
.end method

.method public unregisterForSimRecovery(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1341
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSimRecovery:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1340
    return-void
.end method

.method public unregisterForSmsReady(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1563
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1562
    return-void
.end method

.method public unregisterForSrvccHandoverInfoIndication(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1905
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSrvccHandoverInfoIndicationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1904
    return-void
.end method

.method public unregisterForSrvccStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 865
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSrvccStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 864
    return-void
.end method

.method public unregisterForSsacBarringInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1897
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSsacBarringInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1896
    return-void
.end method

.method public unregisterForSubscriptionStatusChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mSubscriptionStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 779
    return-void
.end method

.method public unregisterForT53AudioControlInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 688
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mT53AudCntrlInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 687
    return-void
.end method

.method public unregisterForT53ClirInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mT53ClirInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 676
    return-void
.end method

.method public unregisterForTrayPlugIn(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mTrayPlugInRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1385
    return-void
.end method

.method public unregisterForViaGpsEvent(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2001
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mViaGpsEvent:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2000
    return-void
.end method

.method public unregisterForVirtualSimOff(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mVirtualSimOff:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1358
    return-void
.end method

.method public unregisterForVirtualSimOn(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mVirtualSimOn:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1349
    return-void
.end method

.method public unregisterForVoiceNetworkStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mVoiceNetworkStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 251
    return-void
.end method

.method public unregisterForVoiceRadioTechChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mVoiceRadioTechChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 274
    return-void
.end method

.method public unregisterForVtRingInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mVtRingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1264
    return-void
.end method

.method public unregisterForVtStatusInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mVtStatusInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1255
    return-void
.end method

.method public unregisterSetDataAllowed(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1463
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mDataAllowedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1462
    return-void
.end method

.method public unsetOnIccRefresh(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 510
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/BaseCommands;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 509
    return-void
.end method

.method public unsetOnIncomingCallIndication(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mIncomingCallIndicationRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 1208
    return-void
.end method

.method public updateImsRegistrationStatus(III)V
    .locals 0
    .param p1, "regState"    # I
    .param p2, "regType"    # I
    .param p3, "reason"    # I

    .prologue
    .line 1952
    return-void
.end method

.method public vtDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 1270
    return-void
.end method

.method public writePhbEntry(Lcom/android/internal/telephony/PhbEntry;Landroid/os/Message;)V
    .locals 0
    .param p1, "entry"    # Lcom/android/internal/telephony/PhbEntry;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1482
    return-void
.end method

.method public writeUPBGrpEntry(I[ILandroid/os/Message;)V
    .locals 0
    .param p1, "adnIndex"    # I
    .param p2, "grpIds"    # [I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 1512
    return-void
.end method
