using System;
using System.Collections.Generic;
using System.Media;
using System.Windows;
using System.Windows.Documents;
using System.Windows.Media;
using System.Windows.Media.Animation;

namespace Lucky
{
    /// <summary>
    /// MainWindow.xaml 的交互逻辑
    /// </summary>
    public partial class MainWindow : Window
    {
        private Storyboard _openStoryboard;
        private Storyboard _closeStoryboard;
        private Storyboard _turnStoryboard;
        private SoundPlayer _soundPlayer;
        private Random _rnd;
        private List<ImageBrush> _listTest;
        private List<ImageBrush> _listCar;
        public MainWindow()
        {
            InitializeComponent();
            _openStoryboard = TryFindResource("Opend") as Storyboard;
            _closeStoryboard= TryFindResource("Close") as Storyboard;
            _turnStoryboard= TryFindResource("Turn") as Storyboard;
            _soundPlayer = new SoundPlayer();
            _rnd = new Random(Guid.NewGuid().GetHashCode());
            _soundPlayer.SoundLocation = System.IO.Path.Combine(System.Windows.Forms.Application.StartupPath, "Resources", "Freesound.wav");
            _listTest = new List<ImageBrush>();
            _listCar = new List<ImageBrush>();
            for (int i= 0;i < 8; i++)
            {
                _listTest.Add(TryFindResource($"Image.{i}@2x") as ImageBrush);
                _listTest.Add(TryFindResource($"Image.{i}@2x") as ImageBrush);
                _listCar.Add(TryFindResource($"Image.car{i}") as ImageBrush);
                _listCar.Add(TryFindResource($"Image.car{i}") as ImageBrush);
            }
            Loaded += MainWindow_Loaded;
        }

        private void MainWindow_Loaded(object sender, RoutedEventArgs e)
        {
            _openStoryboard.Begin();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            _closeStoryboard.Begin();
            StartBtn.Visibility = Visibility.Collapsed;
            Root.Background = TryFindResource($"Image.start") as ImageBrush;
        }

        private void Storyboard_Completed(object sender, EventArgs e)
        {
            _soundPlayer.Play();
            car1.Visibility = Visibility.Collapsed;
            car2.Visibility = Visibility.Collapsed;
            car3.Visibility = Visibility.Collapsed;
            car5.Visibility = Visibility.Collapsed;
            car6.Visibility = Visibility.Collapsed;
            car7.Visibility = Visibility.Collapsed;
            _turnStoryboard.Begin();
        }

        private void DoubleAnimationUsingKeyFrames_Completed(object sender, EventArgs e)
        {
            if (_listTest.Count <= 0) return;
            int index=_rnd.Next(0, _listTest.Count);
            Root.Background = _listTest[index];
            LuckyCar.Visibility = Visibility.Visible;
            LuckyCar.Background = _listCar[index];
            _listCar.RemoveAt(index);
            _listTest.RemoveAt(index);
            EndBtn.Visibility = Visibility.Visible;
            car4.Visibility = Visibility.Collapsed;
        }

        private void EndBtn_Click(object sender, RoutedEventArgs e)
        {
            car1.Visibility = Visibility.Visible;
            car2.Visibility = Visibility.Visible;
            car3.Visibility = Visibility.Visible;
            car4.Visibility = Visibility.Visible;
            car5.Visibility = Visibility.Visible;
            car6.Visibility = Visibility.Visible;
            car7.Visibility = Visibility.Visible;
            
            EndBtn.Visibility = Visibility.Collapsed;
            LuckyCar.Visibility = Visibility.Collapsed;
            Root.Background = null;
            _openStoryboard.Begin();

            if (_listTest.Count <= 0)
            {
                CloseBtn.Visibility = Visibility.Visible;
            }
            else
            {
                StartBtn.Visibility = Visibility.Visible;
            }
        }

        private void CloseBtn_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }
    }
}
