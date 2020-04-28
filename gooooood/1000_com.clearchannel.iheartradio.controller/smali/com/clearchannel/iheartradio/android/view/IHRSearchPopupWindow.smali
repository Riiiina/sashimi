.class public Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;
.super Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;
.source "IHRSearchPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private activity:Lcom/clearchannel/iheartradio/controller/IHRActivity;

.field private context:Landroid/content/Context;

.field private inflater:Landroid/view/LayoutInflater;

.field private rootView:Landroid/view/ViewGroup;

.field private searchButton:Landroid/widget/ImageButton;

.field private searchTextField:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/clearchannel/iheartradio/controller/IHRActivity;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "anchor"    # Landroid/view/View;
    .param p3, "act"    # Lcom/clearchannel/iheartradio/controller/IHRActivity;

    .prologue
    .line 37
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;-><init>(Landroid/view/View;Ljava/lang/Boolean;)V

    .line 38
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;->context:Landroid/content/Context;

    .line 39
    iput-object p3, p0, Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;->activity:Lcom/clearchannel/iheartradio/controller/IHRActivity;

    .line 40
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;->onCreate()V

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;->searchTextField:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .prologue
    .line 138
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;->window:Landroid/widget/PopupWindow;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 140
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;->activity:Lcom/clearchannel/iheartradio/controller/IHRActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 141
    .local v0, "mgr":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;->searchTextField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 142
    invoke-super {p0}, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->dismiss()V

    .line 143
    return-void
.end method

.method public getInputField()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;->searchTextField:Landroid/widget/EditText;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 129
    return-void
.end method

.method protected onCreate()V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;->anchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 56
    const-string v1, "layout_inflater"

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;->inflater:Landroid/view/LayoutInflater;

    .line 57
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03001d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;->rootView:Landroid/view/ViewGroup;

    .line 59
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;->rootView:Landroid/view/ViewGroup;

    const v1, 0x7f09007c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;->searchButton:Landroid/widget/ImageButton;

    .line 60
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;->rootView:Landroid/view/ViewGroup;

    const v1, 0x7f09007b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;->searchTextField:Landroid/widget/EditText;

    .line 61
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;->searchTextField:Landroid/widget/EditText;

    new-instance v1, Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow$1;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow$1;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 82
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;->searchButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow$2;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow$2;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;->setContentView(Landroid/view/View;)V

    .line 110
    return-void
.end method

.method protected onShow()V
    .locals 3

    .prologue
    .line 119
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;->searchTextField:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;->activity:Lcom/clearchannel/iheartradio/controller/IHRActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 122
    .local v0, "mgr":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;->window:Landroid/widget/PopupWindow;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 123
    return-void
.end method
