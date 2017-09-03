using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace DigitalScriptsProject1
{
    public partial class AspWithAdoGridView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnkBtnInsert_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["HName"].DefaultValue =
                ((TextBox)GridView3.FooterRow.FindControl("txtInsertHName")).Text;
            SqlDataSource1.InsertParameters["HAdress"].DefaultValue =
                ((TextBox)GridView3.FooterRow.FindControl("txtInsertHAddress")).Text;
            SqlDataSource1.InsertParameters["HCity"].DefaultValue =
                ((TextBox)GridView3.FooterRow.FindControl("txtInsertHCity")).Text;
            SqlDataSource1.InsertParameters["HState"].DefaultValue =
                ((TextBox)GridView3.FooterRow.FindControl("txtInsertHState")).Text;
            SqlDataSource1.InsertParameters["HPhone"].DefaultValue =
                 ((TextBox)GridView3.FooterRow.FindControl("txtInsertHPhone")).Text;
            SqlDataSource1.Insert();
        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void HIdSearch_Click(object sender, EventArgs e)
        {
            int rowIndex = -1;
            foreach (GridViewRow row in GridView3.Rows)
            {
                rowIndex = row.RowIndex;
                if (row.Cells[0].Text.Equals(txtSearchByHId.Text))
                {
                    rowIndex = row.RowIndex;
                    GridView3.Rows[rowIndex].Visible = true;
                }
                else
                {
                    GridView3.Rows[rowIndex].Visible = false;
                }
            }
        }

        protected void GridView3_PreRender(object sender, EventArgs e)
        {
            Label6.Text = "Page " + (GridView3.PageIndex + 1).ToString()+ " of " + GridView3.PageCount.ToString();
        }
    }
    }