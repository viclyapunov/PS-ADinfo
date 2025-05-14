Add-Type -AssemblyName System.Windows.Forms

# Создание главного окна
$form = New-Object System.Windows.Forms.Form
$form.Text = "Мое приложение"
$form.Width = 300
$form.Height = 200
$form.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen

# Создание кнопки
$button = New-Object System.Windows.Forms.Button
$button.Text = "Нажми меня"
$button.Width = 100
$button.Height = 30
$button.Add_Click({
    [System.Windows.Forms.MessageBox]::Show("Hello world", "Сообщение")
})

# Центрирование кнопки
$button.Left = ($form.ClientSize.Width - $button.Width) / 2
$button.Top = ($form.ClientSize.Height - $button.Height) / 2
$button.Anchor = [System.Windows.Forms.AnchorStyles]::None

# Добавление кнопки на форму
$form.Controls.Add($button)

# Показать форму
$form.ShowDialog()