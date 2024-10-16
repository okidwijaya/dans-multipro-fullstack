import SideBarMenuDashboard from "@/app/components/MenuDashboard";
import React from "react";

export const metadata = {
  title: "Dashboard",
  description: "Dashboard User",
//   icons: {
//     icon: "/favicon-logo.svg",
//   },
};

const layout = ({ children }) => {
  return (
    <>
      <main className="w-full h-screen relative p-0 flex flex-row justify-start">
        <SideBarMenuDashboard />
        <div className="w-full m-auto h-full flex">{children}</div>
      </main>
    </>
  );
};

export default layout;