<%@ Page Title="" Language="C#" MasterPageFile="~/Payment/PaymentMasterPage.master" AutoEventWireup="true" CodeFile="netBanking.aspx.cs" Inherits="Payment_netBanking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="payment-net-banking-content-area">
        <div class="payment-net-banking-popular-head">SELECT FROM POPULAR BANKS</div>
        <div class="payment-net-banking-popular-banks">
            <form action="">
                <div class="popular-banks-sbi">
                    <input type="radio" name="bank" value="1" />
                    <img src="images/sbi-logo.png" />
                </div>
                <div class="popular-banks-hdfc">
                    <input type="radio" name="bank" value="1" />
                    <img src="images/hdfc-logo.png" />
                </div>
                <div class="popular-banks-citi">
                    <input type="radio" name="bank" value="1" />
                    <img src="images/Citibank-logo.png" />
                </div>
                <div class="popular-banks-icici">
                    <input type="radio" name="bank" value="1" />
                    <img src="images/icici-logo.png" />
                </div>
                <div class="popular-banks-axis">
                    <input type="radio" name="bank" value="1" />
                    <img src="images/300px-Axis_Bank_logo.svg.png" />
                </div>
                <div class="popular-banks-pnb">
                    <input type="radio" name="bank" value="1" />
                    <img src="images/punjab_national_bank_logo_3901.gif" />
                </div>
            </form>
        </div>
        <div class="payment-net-banking-other-head">SELECT OTHER BANKS</div>
        <div class="payment-net-banking-other-banks">
            <select class="select-other-banks">
                <option value="select" selected="selected">Select</option>
                <option value="sbi">State Bank of India</option>
                <option value="hdfc">HDFC Bank</option>
                <option value="citi">Citibank</option>
                <option value="icici">ICICI Bank</option>
                <option value="axis">Axis Bank</option>
                <option value="pnb">Punjab National Bank</option>
                <option value="canara">Canara Bank</option>
                <option value="bb">Bank of Baroda</option>
                <option value="ib">Indian Bank</option>
                <option value="fbl">Federal Bank Limited</option>
                <option value="sib">South Indian Bank</option>
                <option value="idbi">IDBI Bank</option>
                <option value="ub">Union Bank</option>
                <option value="cbi">Central Bank of India</option>
                <option value="obc">Oriental Bank of Commerce</option>
                <option value="iob">Indian Overseas Bank</option>
                <option value="sb">Syndicate Bank</option>
                <option value="scb">Standard Chartered Bank</option>
                <option value="sbh">State Bank of Hyderabad</option>
            </select>
        </div>

        <div class="payment-debit-card-warning">
            <div class="payment-debit-card-warning-img">
                <img src="images/pay-lock.jpg" />
            </div>
            <div class="payment-debit-card-warning-msg">
                We Don't save any Bank details
            </div>
        </div>
        <div class="payment-debit-card-buttons">
            <div class="payment-debit-card-buttons-payment">
                <asp:Button ID="btn_Payment" runat="server" Text="Pay Now" class="btn-pay-now" OnClick="btn_Payment_Click" />
            </div>
            <div class="payment-debit-card-buttons-cancel">
                <a href="../Customer_new/CustomerHome.aspx">Cancel</a>
            </div>
            &nbsp;&nbsp;&nbsp;&nbsp;
              <a href="../Customer_new/CustomerHome.aspx">Home Page</a>
        </div>
    </div>
    <div class="payment-secure">
        <img src="images/pay-lock.jpg" />
        Your payment details are secured via 128 bit  Cafe lasa
    </div>
</asp:Content>

