using StoreManagement.Utilities;
using StoreManagement.Views.UserControls;
using StoreManagement.Views.ViewModels;
using StoreManagement.Views.Windows;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace StoreManagement.Views.ViewModels
{
    public class DashboardViewModel: BaseViewModel
    {
        #region Command
        public ICommand CloseWindowCommand { get; set; }
        public ICommand MinimizeWindowCommand { get; set; }
        public ICommand MaximizeWindowCommand { get; set; }
        public ICommand MouseMoveWindowCommand { get; set; }
        public ICommand CloseMenuCommand { get; set; }
        public ICommand OpenMenuCommand { get; set; }
        public ICommand LoadCommand { get; set; }
        public ICommand HomeCommand { get; set; }
        public ICommand ProductManagerCommand { get; set; }
        public ICommand StaticCommand { get; set; }
        public ICommand StaffManagerCommand { get; set; }
        public ICommand BillManagerCommand { get; set; }
        public ICommand LogOutCommand { get; set; }
        public ICommand PersonalInfoCommand { get; set; }
        #endregion


        #region Binding
        private Visibility _CloseMenuVisibility;
        public Visibility CloseMenuVisibility { get => _CloseMenuVisibility; set { if (value == _CloseMenuVisibility) return; _CloseMenuVisibility = value; OnPropertyChanged(); } }

        private Visibility _OpenMenuVisibility;
        public Visibility OpenMenuVisibility { get => _OpenMenuVisibility; set { if (value == _OpenMenuVisibility) return; _OpenMenuVisibility = value; OnPropertyChanged(); } }

        private Thickness _GridCursor;
        public Thickness GridCursor { get => _GridCursor; set { if (value == _GridCursor) return; _GridCursor = value; OnPropertyChanged(); } }

        private UserControl _Page;
        public UserControl Page { get => _Page; set { if (value == _Page) return; _Page = value; OnPropertyChanged(); } }

        private Visibility _StaffManagerVisibility;
        public Visibility StaffManagerVisibility { get => _StaffManagerVisibility; set { if (value == _StaffManagerVisibility) return; _StaffManagerVisibility = value; OnPropertyChanged(); } }

        private Visibility _StatisticsManagerVisibility;
        public Visibility StatisticsManagerVisibility { get => _StatisticsManagerVisibility; set { if (value == _StatisticsManagerVisibility) return; _StatisticsManagerVisibility = value; OnPropertyChanged(); } }

        private Visibility _ProductManagerVisibility;
        public Visibility ProductManagerVisibility { get => _ProductManagerVisibility; set { if (value == _ProductManagerVisibility) return; _ProductManagerVisibility = value; OnPropertyChanged(); } }

        private Visibility _PersonalInfoVisibility;
        public Visibility PersonalInfoVisibility { get => _PersonalInfoVisibility; set { if (value == _PersonalInfoVisibility) return; _PersonalInfoVisibility = value; OnPropertyChanged(); } }

        #endregion

        public DashboardViewModel()
        {
            CloseWindowCommand = new RelayCommand<Window>((p) => { return p == null ? false : true; }, (p) => { p.Close(); });
            MinimizeWindowCommand = new RelayCommand<Window>((p) => { return p == null ? false : true; }, (p) =>
            {
                if (p != null)
                {
                    if (p.WindowState != WindowState.Minimized)
                    {
                        p.WindowState = WindowState.Minimized;
                    }
                    else
                    {
                        p.WindowState = WindowState.Maximized;
                    }
                }

            });
            MaximizeWindowCommand = new RelayCommand<Window>((p) => { return p == null ? false : true; }, (p) =>
            {
                if (p != null)
                {
                    if (p.WindowState != WindowState.Maximized)
                    {
                        p.WindowState = WindowState.Maximized;
                    }
                    else
                    {
                        p.WindowState = WindowState.Normal;
                    }
                }
            });
            MouseMoveWindowCommand = new RelayCommand<Window>((p) => { return p == null ? false : true; }, (p) =>
            {
                p.DragMove();
            });
            OpenMenuCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                CloseMenuVisibility = Visibility.Visible;
                OpenMenuVisibility = Visibility.Collapsed;
            });
            CloseMenuCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                CloseMenuVisibility = Visibility.Collapsed;
                OpenMenuVisibility = Visibility.Visible;
            });
            LoadCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                SetUIWindow();               
            });
            HomeCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {            
                GridCursor = new Thickness(0, 10, 0, 0);
                Page = new UCSale();
            });
            BillManagerCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                GridCursor = new Thickness(0, 10 + 1 * 60, 0, 0);
                Page = new UCBill();
            });
            PersonalInfoCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                GridCursor = new Thickness(0, 10 + 2 * 60, 0, 0);
                Page = new UCPersonalInfo();
            });
            ProductManagerCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                GridCursor = new Thickness(0, 10 + 2*60, 0, 0);
                Page = new UCProductManager();
            });
            StaticCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                GridCursor = new Thickness(0, 10 + 3*60, 0, 0);
                Page = new UCStatistics();
            });
            StaffManagerCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                GridCursor = new Thickness(0, 10 + 4*60, 0, 0);
                Page = new UCStaffManager();
            });
           
            LogOutCommand = new RelayCommand<Window>((p) => { return p == null ? false : true; }, (p) =>
            {
                var loginWindow = new LoginWindow();
                loginWindow.Show();
                p.Close();
            });

        }

        private void SetUIWindow()
        {
            CloseMenuVisibility = Visibility.Collapsed;
            OpenMenuVisibility = Visibility.Visible;

            GridCursor = new Thickness(0, 10, 0, 0);
            Page = new UCSale();

            //admin
            if (StaticData.RoleID == 1)
            {
                ProductManagerVisibility = Visibility.Visible;
                StaffManagerVisibility = Visibility.Visible;
                StatisticsManagerVisibility = Visibility.Visible;
                PersonalInfoVisibility = Visibility.Collapsed;

            }
            //cashier
            else
            {
                ProductManagerVisibility = Visibility.Collapsed;
                StaffManagerVisibility = Visibility.Collapsed;
                StatisticsManagerVisibility = Visibility.Collapsed;
                PersonalInfoVisibility = Visibility.Visible;
            }
        }
    }
}
