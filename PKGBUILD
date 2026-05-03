# Maintainer: Master Kim <your-email@example.com>
pkgname=kimsystemai-git
_pkgname=kimsystemai
pkgver=0.1.0.r0
pkgrel=1
pkgdesc="KimSystem AI CLI: A specialized expert in Arch Linux and Hyprland"
arch=('any')
url="https://github.com/eliakimrosil/KimSystemAI"
license=('MIT')
depends=('python' 'python-requests' 'grim' 'hyprland' 'mpv')
makedepends=('git' 'python-build' 'python-installer' 'python-setuptools' 'python-wheel')
provides=("$_pkgname")
conflicts=("$_pkgname")
source=("$_pkgname::git+$url.git")
md5sums=('SKIP')

pkgver() {
  cd "$_pkgname"
  ( set -o pipefail
    git describe --long --tags 2>/dev/null | sed 's/\([^-]*-g\)/r\1/;s/-/./g' ||
    printf "0.1.0.r%s.g%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"
  )
}

build() {
  cd "$_pkgname"
  python -m build --wheel --no-isolation
}

package() {
  cd "$_pkgname"
  python -m installer --destdir="$pkgdir" dist/*.whl
  
  # Install the .env.example as a reference
  install -Dm644 .env.example "$pkgdir/usr/share/$_pkgname/.env.example"
  
  # Install the License
  install -Dm644 LICENSE "$pkgdir/usr/share/licenses/$pkgname/LICENSE"
}
