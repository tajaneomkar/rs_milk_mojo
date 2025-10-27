require 'fileutils'

# Define base folder name (optional: change if you want a subfolder)
base_dir = "lib"

# Define folder structure
folders = [
  "#{base_dir}/core/constants",
  "#{base_dir}/core/errors",
  "#{base_dir}/core/network",
  "#{base_dir}/core/services",
  "#{base_dir}/core/usecases",
  "#{base_dir}/core/utils",

  "#{base_dir}/shared/widgets",
  "#{base_dir}/shared/theme",
  "#{base_dir}/shared/helpers",
  "#{base_dir}/shared/extensions",

  "#{base_dir}/features",

  "#{base_dir}/routes",
  "#{base_dir}/config",
  "#{base_dir}/injection",
]

# Create example feature folder structure
feature_name = "auth"  # You can change or duplicate this section per feature
feature_folders = [
  "#{base_dir}/features/#{feature_name}/data/datasources",
  "#{base_dir}/features/#{feature_name}/data/models",
  "#{base_dir}/features/#{feature_name}/data/repositories",
  "#{base_dir}/features/#{feature_name}/domain/entities",
  "#{base_dir}/features/#{feature_name}/domain/repositories",
  "#{base_dir}/features/#{feature_name}/domain/usecases",
  "#{base_dir}/features/#{feature_name}/presentation/bloc",
  "#{base_dir}/features/#{feature_name}/presentation/pages",
  "#{base_dir}/features/#{feature_name}/presentation/widgets"
]

# Combine both lists
all_folders = folders + feature_folders

# Create folders
all_folders.each do |folder|
  FileUtils.mkdir_p(folder)
  puts "✅ Created: #{folder}"
end

# Create some default files
default_files = {
  "#{base_dir}/routes/app_router.dart" => "// AppRouter: Manages navigation routes\n",
  "#{base_dir}/core/constants/app_strings.dart" => "// App-wide string constants\n",
  "#{base_dir}/core/constants/app_colors.dart" => "// App color palette\n",
  "#{base_dir}/core/network/api_client.dart" => "// API Client setup\n",
  "#{base_dir}/shared/helpers/logger.dart" => "// Logging helper functions\n",
  "#{base_dir}/injection/service_locator.dart" => "// Dependency Injection setup (get_it)\n",
}

default_files.each do |file, content|
  File.write(file, content)
  puts "📝 Created file: #{file}"
end

puts "\n🎉 Flutter BLoC clean architecture structure created successfully!"
