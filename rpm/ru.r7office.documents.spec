Name:           ru.r7office.documents
Version:        1.0.0
Release:        1%{?dist}
Summary:        R7 Documents
Group:          System/Base
License:        Proprietary
URL:            https://r7-office.ru
Source0:        %{name}-%{version}.tar.bz2

BuildRequires:  pkgconfig(Qt5Core)
BuildRequires:  pkgconfig(Qt5Qml)
BuildRequires:  pkgconfig(Qt5Quick)

%description
R7-Documents app

%prep
%autosetup

%build
qmake PREFIX=%{buildroot}
%{make}

%install
make install

%clean
%{__rm} -rf $RPM_BUILD_ROOT
%{__rm} -rf $RPM_BUILD_DIR/*

%files
%defattr(-,root,root,-)
%{_bindir}/%{name}
%defattr(644,root,root,-)
%{_datadir}/applications/%{name}.desktop
%{_datadir}/icons/hicolor/*/apps/%{name}.png
%{_datadir}/icons/hicolor/*/apps/%{name}.svg
