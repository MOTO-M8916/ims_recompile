.class public final Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF$CallList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Call"
.end annotation


# static fields
.field public static final ALS_FIELD_NUMBER:I = 0x6

.field public static final CALLDETAILS_FIELD_NUMBER:I = 0xd

.field public static final FAILCAUSE_FIELD_NUMBER:I = 0xe

.field public static final HISTORYINFO_FIELD_NUMBER:I = 0x11

.field public static final INDEX_FIELD_NUMBER:I = 0x2

.field public static final ISCALLEDPARTYRINGING_FIELD_NUMBER:I = 0x10

.field public static final ISENCRYPTED_FIELD_NUMBER:I = 0xf

.field public static final ISMPTY_FIELD_NUMBER:I = 0x4

.field public static final ISMT_FIELD_NUMBER:I = 0x5

.field public static final ISVOICEPRIVACY_FIELD_NUMBER:I = 0x8

.field public static final ISVOICE_FIELD_NUMBER:I = 0x7

.field public static final NAMEPRESENTATION_FIELD_NUMBER:I = 0xc

.field public static final NAME_FIELD_NUMBER:I = 0xb

.field public static final NUMBERPRESENTATION_FIELD_NUMBER:I = 0xa

.field public static final NUMBER_FIELD_NUMBER:I = 0x9

.field public static final STATE_FIELD_NUMBER:I = 0x1

.field public static final TOA_FIELD_NUMBER:I = 0x3


# instance fields
.field private als_:I

.field private cachedSize:I

.field private callDetails_:Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

.field private failCause_:Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

.field private hasAls:Z

.field private hasCallDetails:Z

.field private hasFailCause:Z

.field private hasHistoryInfo:Z

.field private hasIndex:Z

.field private hasIsCalledPartyRinging:Z

.field private hasIsEncrypted:Z

.field private hasIsMT:Z

.field private hasIsMpty:Z

.field private hasIsVoice:Z

.field private hasIsVoicePrivacy:Z

.field private hasName:Z

.field private hasNamePresentation:Z

.field private hasNumber:Z

.field private hasNumberPresentation:Z

.field private hasState:Z

.field private hasToa:Z

.field private historyInfo_:Ljava/lang/String;

.field private index_:I

.field private isCalledPartyRinging_:Z

.field private isEncrypted_:Z

.field private isMT_:Z

.field private isMpty_:Z

.field private isVoicePrivacy_:Z

.field private isVoice_:Z

.field private namePresentation_:I

.field private name_:Ljava/lang/String;

.field private numberPresentation_:I

.field private number_:Ljava/lang/String;

.field private state_:I

.field private toa_:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1945
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1950
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->state_:I

    .line 1967
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->index_:I

    .line 1984
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->toa_:I

    .line 2001
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isMpty_:Z

    .line 2018
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isMT_:Z

    .line 2035
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->als_:I

    .line 2052
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isVoice_:Z

    .line 2069
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isVoicePrivacy_:Z

    .line 2086
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->number_:Ljava/lang/String;

    .line 2103
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->numberPresentation_:I

    .line 2120
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->name_:Ljava/lang/String;

    .line 2137
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->namePresentation_:I

    .line 2154
    iput-object v2, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->callDetails_:Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 2174
    iput-object v2, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->failCause_:Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .line 2194
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isEncrypted_:Z

    .line 2211
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isCalledPartyRinging_:Z

    .line 2228
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->historyInfo_:Ljava/lang/String;

    .line 2324
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->cachedSize:I

    .line 1945
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2508
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2502
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    .line 2243
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearState()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 2244
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearIndex()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 2245
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearToa()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 2246
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearIsMpty()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 2247
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearIsMT()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 2248
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearAls()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 2249
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearIsVoice()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 2250
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearIsVoicePrivacy()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 2251
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearNumber()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 2252
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearNumberPresentation()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 2253
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearName()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 2254
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearNamePresentation()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 2255
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 2256
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearFailCause()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 2257
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearIsEncrypted()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 2258
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearIsCalledPartyRinging()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 2259
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearHistoryInfo()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 2260
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->cachedSize:I

    .line 2261
    return-object p0
.end method

.method public clearAls()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2044
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasAls:Z

    .line 2045
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->als_:I

    .line 2046
    return-object p0
.end method

.method public clearCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    .line 2166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasCallDetails:Z

    .line 2167
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->callDetails_:Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 2168
    return-object p0
.end method

.method public clearFailCause()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    .line 2186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasFailCause:Z

    .line 2187
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->failCause_:Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .line 2188
    return-object p0
.end method

.method public clearHistoryInfo()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    .line 2237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasHistoryInfo:Z

    .line 2238
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->historyInfo_:Ljava/lang/String;

    .line 2239
    return-object p0
.end method

.method public clearIndex()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1976
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIndex:Z

    .line 1977
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->index_:I

    .line 1978
    return-object p0
.end method

.method public clearIsCalledPartyRinging()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2220
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsCalledPartyRinging:Z

    .line 2221
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isCalledPartyRinging_:Z

    .line 2222
    return-object p0
.end method

.method public clearIsEncrypted()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2203
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsEncrypted:Z

    .line 2204
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isEncrypted_:Z

    .line 2205
    return-object p0
.end method

.method public clearIsMT()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2027
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsMT:Z

    .line 2028
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isMT_:Z

    .line 2029
    return-object p0
.end method

.method public clearIsMpty()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2010
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsMpty:Z

    .line 2011
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isMpty_:Z

    .line 2012
    return-object p0
.end method

.method public clearIsVoice()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2061
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsVoice:Z

    .line 2062
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isVoice_:Z

    .line 2063
    return-object p0
.end method

.method public clearIsVoicePrivacy()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2078
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsVoicePrivacy:Z

    .line 2079
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isVoicePrivacy_:Z

    .line 2080
    return-object p0
.end method

.method public clearName()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    .line 2129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasName:Z

    .line 2130
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->name_:Ljava/lang/String;

    .line 2131
    return-object p0
.end method

.method public clearNamePresentation()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2146
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNamePresentation:Z

    .line 2147
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->namePresentation_:I

    .line 2148
    return-object p0
.end method

.method public clearNumber()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    .line 2095
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNumber:Z

    .line 2096
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->number_:Ljava/lang/String;

    .line 2097
    return-object p0
.end method

.method public clearNumberPresentation()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2112
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNumberPresentation:Z

    .line 2113
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->numberPresentation_:I

    .line 2114
    return-object p0
.end method

.method public clearState()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1959
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasState:Z

    .line 1960
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->state_:I

    .line 1961
    return-object p0
.end method

.method public clearToa()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1993
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasToa:Z

    .line 1994
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->toa_:I

    .line 1995
    return-object p0
.end method

.method public getAls()I
    .locals 1

    .prologue
    .line 2036
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->als_:I

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2327
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->cachedSize:I

    if-gez v0, :cond_0

    .line 2329
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getSerializedSize()I

    .line 2331
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->cachedSize:I

    return v0
.end method

.method public getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1

    .prologue
    .line 2156
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->callDetails_:Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    return-object v0
.end method

.method public getFailCause()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    .locals 1

    .prologue
    .line 2176
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->failCause_:Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    return-object v0
.end method

.method public getHistoryInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2229
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->historyInfo_:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 1968
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->index_:I

    return v0
.end method

.method public getIsCalledPartyRinging()Z
    .locals 1

    .prologue
    .line 2212
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isCalledPartyRinging_:Z

    return v0
.end method

.method public getIsEncrypted()Z
    .locals 1

    .prologue
    .line 2195
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isEncrypted_:Z

    return v0
.end method

.method public getIsMT()Z
    .locals 1

    .prologue
    .line 2019
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isMT_:Z

    return v0
.end method

.method public getIsMpty()Z
    .locals 1

    .prologue
    .line 2002
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isMpty_:Z

    return v0
.end method

.method public getIsVoice()Z
    .locals 1

    .prologue
    .line 2053
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isVoice_:Z

    return v0
.end method

.method public getIsVoicePrivacy()Z
    .locals 1

    .prologue
    .line 2070
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isVoicePrivacy_:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2121
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNamePresentation()I
    .locals 1

    .prologue
    .line 2138
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->namePresentation_:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2087
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->number_:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberPresentation()I
    .locals 1

    .prologue
    .line 2104
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->numberPresentation_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2336
    const/4 v0, 0x0

    .line 2337
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2339
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getState()I

    move-result v1

    const/4 v2, 0x1

    .line 2338
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 2341
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIndex()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2343
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIndex()I

    move-result v1

    const/4 v2, 0x2

    .line 2342
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2345
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasToa()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2347
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getToa()I

    move-result v1

    const/4 v2, 0x3

    .line 2346
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2349
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsMpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2351
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsMpty()Z

    move-result v1

    const/4 v2, 0x4

    .line 2350
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2353
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsMT()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2355
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsMT()Z

    move-result v1

    const/4 v2, 0x5

    .line 2354
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2357
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasAls()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2359
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getAls()I

    move-result v1

    const/4 v2, 0x6

    .line 2358
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2361
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsVoice()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2363
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsVoice()Z

    move-result v1

    const/4 v2, 0x7

    .line 2362
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2365
    :cond_6
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsVoicePrivacy()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2367
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsVoicePrivacy()Z

    move-result v1

    const/16 v2, 0x8

    .line 2366
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2369
    :cond_7
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNumber()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2371
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    .line 2370
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2373
    :cond_8
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNumberPresentation()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2375
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getNumberPresentation()I

    move-result v1

    const/16 v2, 0xa

    .line 2374
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2377
    :cond_9
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasName()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2379
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    .line 2378
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2381
    :cond_a
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNamePresentation()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2383
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getNamePresentation()I

    move-result v1

    const/16 v2, 0xc

    .line 2382
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2385
    :cond_b
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasCallDetails()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2387
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v1

    const/16 v2, 0xd

    .line 2386
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2389
    :cond_c
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasFailCause()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2391
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getFailCause()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v1

    const/16 v2, 0xe

    .line 2390
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2393
    :cond_d
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsEncrypted()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2395
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsEncrypted()Z

    move-result v1

    const/16 v2, 0xf

    .line 2394
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2397
    :cond_e
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsCalledPartyRinging()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2399
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsCalledPartyRinging()Z

    move-result v1

    const/16 v2, 0x10

    .line 2398
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2401
    :cond_f
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasHistoryInfo()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2403
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getHistoryInfo()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    .line 2402
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2405
    :cond_10
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->cachedSize:I

    .line 2406
    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 1952
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->state_:I

    return v0
.end method

.method public getToa()I
    .locals 1

    .prologue
    .line 1985
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->toa_:I

    return v0
.end method

.method public hasAls()Z
    .locals 1

    .prologue
    .line 2037
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasAls:Z

    return v0
.end method

.method public hasCallDetails()Z
    .locals 1

    .prologue
    .line 2155
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasCallDetails:Z

    return v0
.end method

.method public hasFailCause()Z
    .locals 1

    .prologue
    .line 2175
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasFailCause:Z

    return v0
.end method

.method public hasHistoryInfo()Z
    .locals 1

    .prologue
    .line 2230
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasHistoryInfo:Z

    return v0
.end method

.method public hasIndex()Z
    .locals 1

    .prologue
    .line 1969
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIndex:Z

    return v0
.end method

.method public hasIsCalledPartyRinging()Z
    .locals 1

    .prologue
    .line 2213
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsCalledPartyRinging:Z

    return v0
.end method

.method public hasIsEncrypted()Z
    .locals 1

    .prologue
    .line 2196
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsEncrypted:Z

    return v0
.end method

.method public hasIsMT()Z
    .locals 1

    .prologue
    .line 2020
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsMT:Z

    return v0
.end method

.method public hasIsMpty()Z
    .locals 1

    .prologue
    .line 2003
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsMpty:Z

    return v0
.end method

.method public hasIsVoice()Z
    .locals 1

    .prologue
    .line 2054
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsVoice:Z

    return v0
.end method

.method public hasIsVoicePrivacy()Z
    .locals 1

    .prologue
    .line 2071
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsVoicePrivacy:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 2122
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasName:Z

    return v0
.end method

.method public hasNamePresentation()Z
    .locals 1

    .prologue
    .line 2139
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNamePresentation:Z

    return v0
.end method

.method public hasNumber()Z
    .locals 1

    .prologue
    .line 2088
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNumber:Z

    return v0
.end method

.method public hasNumberPresentation()Z
    .locals 1

    .prologue
    .line 2105
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNumberPresentation:Z

    return v0
.end method

.method public hasState()Z
    .locals 1

    .prologue
    .line 1951
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasState:Z

    return v0
.end method

.method public hasToa()Z
    .locals 1

    .prologue
    .line 1986
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasToa:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2265
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2410
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2414
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2415
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2419
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2420
    return-object p0

    .line 2417
    :sswitch_0
    return-object p0

    .line 2425
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setState(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2429
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setIndex(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2433
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setToa(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2437
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setIsMpty(Z)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2441
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setIsMT(Z)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2445
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setAls(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2449
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setIsVoice(Z)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2453
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setIsVoicePrivacy(Z)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2457
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2461
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setNumberPresentation(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2465
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setName(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2469
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setNamePresentation(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2473
    :sswitch_d
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;-><init>()V

    .line 2474
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2475
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setCallDetails(Lorg/codeaurora/ims/ImsQmiIF$CallDetails;)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2479
    .end local v1    # "value":Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    :sswitch_e
    new-instance v2, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    invoke-direct {v2}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;-><init>()V

    .line 2480
    .local v2, "value":Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    invoke-virtual {p1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2481
    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setFailCause(Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto/16 :goto_0

    .line 2485
    .end local v2    # "value":Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setIsEncrypted(Z)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto/16 :goto_0

    .line 2489
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setIsCalledPartyRinging(Z)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto/16 :goto_0

    .line 2493
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setHistoryInfo(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto/16 :goto_0

    .line 2415
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x35 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
        0x55 -> :sswitch_a
        0x5a -> :sswitch_b
        0x65 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x78 -> :sswitch_f
        0x80 -> :sswitch_10
        0x8a -> :sswitch_11
    .end sparse-switch
.end method

.method public setAls(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2039
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasAls:Z

    .line 2040
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->als_:I

    .line 2041
    return-object p0
.end method

.method public setCallDetails(Lorg/codeaurora/ims/ImsQmiIF$CallDetails;)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .prologue
    .line 2158
    if-nez p1, :cond_0

    .line 2159
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2161
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasCallDetails:Z

    .line 2162
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->callDetails_:Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 2163
    return-object p0
.end method

.method public setFailCause(Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .prologue
    .line 2178
    if-nez p1, :cond_0

    .line 2179
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2181
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasFailCause:Z

    .line 2182
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->failCause_:Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .line 2183
    return-object p0
.end method

.method public setHistoryInfo(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasHistoryInfo:Z

    .line 2233
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->historyInfo_:Ljava/lang/String;

    .line 2234
    return-object p0
.end method

.method public setIndex(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1971
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIndex:Z

    .line 1972
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->index_:I

    .line 1973
    return-object p0
.end method

.method public setIsCalledPartyRinging(Z)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsCalledPartyRinging:Z

    .line 2216
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isCalledPartyRinging_:Z

    .line 2217
    return-object p0
.end method

.method public setIsEncrypted(Z)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsEncrypted:Z

    .line 2199
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isEncrypted_:Z

    .line 2200
    return-object p0
.end method

.method public setIsMT(Z)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2022
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsMT:Z

    .line 2023
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isMT_:Z

    .line 2024
    return-object p0
.end method

.method public setIsMpty(Z)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2005
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsMpty:Z

    .line 2006
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isMpty_:Z

    .line 2007
    return-object p0
.end method

.method public setIsVoice(Z)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2056
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsVoice:Z

    .line 2057
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isVoice_:Z

    .line 2058
    return-object p0
.end method

.method public setIsVoicePrivacy(Z)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2073
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsVoicePrivacy:Z

    .line 2074
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isVoicePrivacy_:Z

    .line 2075
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasName:Z

    .line 2125
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->name_:Ljava/lang/String;

    .line 2126
    return-object p0
.end method

.method public setNamePresentation(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNamePresentation:Z

    .line 2142
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->namePresentation_:I

    .line 2143
    return-object p0
.end method

.method public setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2090
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNumber:Z

    .line 2091
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->number_:Ljava/lang/String;

    .line 2092
    return-object p0
.end method

.method public setNumberPresentation(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNumberPresentation:Z

    .line 2108
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->numberPresentation_:I

    .line 2109
    return-object p0
.end method

.method public setState(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1954
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasState:Z

    .line 1955
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->state_:I

    .line 1956
    return-object p0
.end method

.method public setToa(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1988
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasToa:Z

    .line 1989
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->toa_:I

    .line 1990
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2271
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2272
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getState()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2274
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIndex()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2275
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIndex()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 2277
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasToa()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2278
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getToa()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 2280
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsMpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2281
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsMpty()Z

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2283
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsMT()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2284
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsMT()Z

    move-result v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2286
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasAls()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2287
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getAls()I

    move-result v0

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 2289
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsVoice()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2290
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsVoice()Z

    move-result v0

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2292
    :cond_6
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsVoicePrivacy()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2293
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsVoicePrivacy()Z

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2295
    :cond_7
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNumber()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2296
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2298
    :cond_8
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNumberPresentation()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2299
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getNumberPresentation()I

    move-result v0

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 2301
    :cond_9
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasName()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2302
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2304
    :cond_a
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNamePresentation()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2305
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getNamePresentation()I

    move-result v0

    const/16 v1, 0xc

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 2307
    :cond_b
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasCallDetails()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2308
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2310
    :cond_c
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasFailCause()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2311
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getFailCause()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2313
    :cond_d
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsEncrypted()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2314
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsEncrypted()Z

    move-result v0

    const/16 v1, 0xf

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2316
    :cond_e
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsCalledPartyRinging()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2317
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsCalledPartyRinging()Z

    move-result v0

    const/16 v1, 0x10

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2319
    :cond_f
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasHistoryInfo()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2320
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getHistoryInfo()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2270
    :cond_10
    return-void
.end method
