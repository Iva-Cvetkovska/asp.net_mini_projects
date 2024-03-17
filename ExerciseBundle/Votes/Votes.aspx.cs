using System;
using System.Collections.Generic;
using System.Web.UI.WebControls;

namespace ExerciseBundle.Votes
{
    public partial class Votes : System.Web.UI.Page
    {
        private static List<Subject> subjects = new List<Subject>();
        class Subject
        {
            public string name;
            public string professor;
            public int credits;

            public Subject(string name, string professor, int credits)
            {
                this.name = name;
                this.professor = professor;
                this.credits = credits;
            }
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                subjects.Add(new Subject("Internet Technologies", "John Doe", 6));
                subjects.Add(new Subject("Intro to Computer Science", "Jane Doe", 5));
                subjects.Add(new Subject("Wireless Networks", "Sam Smith", 4));

                foreach (Subject subject in subjects)
                {
                    ListItem liSubject = new ListItem(subject.name, subjects.IndexOf(subject).ToString());
                    ListItem liCredits = new ListItem(subject.credits.ToString());
                    lbSubjects.Items.Add(liSubject);
                    lbCredits.Items.Add(liCredits);
                }
            }
        }

        protected void Subject_Selected(object sender, EventArgs e)
        {
            int subjectIndex = Convert.ToInt32(lbSubjects.SelectedItem.Value);
            Subject subject = subjects[subjectIndex];

            lbProfessor.Text = "Professor: " + subject.professor;
            lbCredits.SelectedIndex = subjectIndex;
        }

        protected void Vote(object sender, EventArgs e)
        {
            if(lbSubjects.SelectedIndex > -1)
            {
                Response.Redirect("SuccessPage.aspx?email=" + Request.QueryString["email"]);
            }
        }
    }
}