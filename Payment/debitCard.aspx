<%@ Page Title="" Language="C#" MasterPageFile="~/Payment/PaymentMasterPage.master" AutoEventWireup="true" CodeFile="debitCard.aspx.cs" Inherits="Payment_debitCard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="payment-debit-card">
        <div class="payment-debit-num-head">ENTER DEBIT CARD NUMBER</div>
        <div class="payment-debit-number-main">
            <div class="payment-debit-number">
                <asp:TextBox ID="txt_debit_card" runat="server" class="text-debit-card" onkeypress="return isNumberKey(event)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_debit_card" ValidationGroup="s" ErrorMessage="*"></asp:RequiredFieldValidator>
            </div>
            <div class="payment-debit-card-type">
                <img class="card-img" src="images/Debit.png" />
            </div>
        </div>
        <div class="payment-debit-card-info">
            <div class="payment-debit-card-info-head">
                <div class="payment-debit-card-info-head-ex">
                    EXPIRY DATE
                </div>
                <div class="payment-debit-card-info-head-cvv">
                    CVV
                </div>
            </div>
            <div class="payment-debit-card-info-details">
                <div class="payment-debit-card-info-details-date">
                    <select class="select-debit-card-month">
                        <option value="month">MM</option>
                        <option value="01/jan">01/Jan</option>
                        <option value="02/feb">02/Feb</option>
                        <option value="03/mar">01/Mar</option>
                        <option value="04/apr">02/Apr</option>
                        <option value="05/may">01/May</option>
                        <option value="06/jun">02/Jun</option>
                        <option value="07/jul">01/Jul</option>
                        <option value="08/aug">02/Aug</option>
                        <option value="09/sep">01/Sep</option>
                        <option value="10/oct">02/Oct</option>
                        <option value="11/nov">01/Nov</option>
                        <option value="12/dec">02/Dec</option>
                    </select>

                    <select class="select-debit-card-year">
                        <option value="year">YY</option>
                        <option value="2016">2016</option>
                        <option value="2017">2017</option>
                        <option value="2018">2018</option>
                        <option value="2019">2019</option>
                        <option value="2020">2020</option>
                        <option value="2021">2021</option>
                        <option value="2022">2022</option>
                        <option value="2023">2023</option>
                        <option value="2024">2024</option>
                        <option value="2025">2025</option>
                        <option value="2026">2026</option>
                    </select>
                </div>
                <div class="payment-debit-card-info-details-cvv">
                    <asp:TextBox ID="txt_cvv" runat="server" class="text-debit-card-cvv" onkeypress="return isNumberKey(event)"></asp:TextBox>
                </div>
            </div>
        </div>

        <div class="payment-debit-card-warning">
            <div class="payment-debit-card-warning-img">
                <img src="images/pay-lock.jpg" />
            </div>
            <div class="payment-debit-card-warning-msg">
                We Don't save any Debit card details and VCC
            </div>
        </div>
        <div class="payment-debit-card-buttons">
            <div class="payment-debit-card-buttons-payment">
                <asp:Button ID="btn_Payment" runat="server" ValidationGroup="s" Text="Pay Now" class="btn-pay-now" OnClick="btn_Payment_Click" />
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

