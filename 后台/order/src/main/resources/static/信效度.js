function randomNum(minNum, maxNum) {
    switch (arguments.length) {
        case 1:
            return parseInt(Math.random() * minNum + 1, 10);
        case 2:
            return parseInt(Math.random() * (maxNum - minNum + 1) + minNum, 10);
        default:
            return 0;
    }
}

function leijia(list, num) {
    var sum = 0
    for (var i = 0; i < num; i++) {
        sum += list[i];
    }
    return sum;
}

function isInRange(num, start, end) {
    if (num >= start && num <= end) {
        return true;
    } else {
        return false;
    }
}

function danxuan(bili) {
    var pp = randomNum(1, 100)
    for (var i = 1; i <= bili.length; i++) {
        var start = 0;
        if (i !== 1) {
            start = leijia(bili, i - 1)
        }
        var end = leijia(bili, i);
        if (isInRange(pp, start, end)) {
            return i - 1;
        }
    }
}


bili = [5, 95];
let type = danxuan(bili);
if (type === (0)) {
    bili = [5, 95, 0, 0, 0];
} else {
    bili = [0, 0, 5, 15, 80];
}
let gg = 5;
liangbiao_lists = document["querySelectorAll"]('#div5 tbody tr[tp="d"]');
liangbiao_index = 0;

for (let i = 0; i < liangbiao_lists["length"]; i++) {
    ops = liangbiao_lists[liangbiao_index]['querySelectorAll']("td a");
    liangbiao_index += 1;
    ops[danxuan(bili)]['click']();
}
liangbiao_lists = document['querySelectorAll']("#div" + gg++ + "]\"d\"=pt[rt ydobt ".split("").reverse().join(""));
liangbiao_index = 0;
for (let i = 0; i < liangbiao_lists['length']; i++) {
    ops = liangbiao_lists[liangbiao_index]['querySelectorAll']("td a");
    liangbiao_index += 1;
    ops[danxuan(bili)]['click']();
}
liangbiao_lists = document['querySelectorAll']("#div" + gg++ + "]\"d\"=pt[rt ydobt ".split("").reverse().join(""));
liangbiao_index = 0;
for (let i = 0; i < liangbiao_lists['length']; i++) {
    ops = liangbiao_lists[liangbiao_index]['querySelectorAll']("td a");
    liangbiao_index += 1;
    ops[danxuan(bili)]['click']();
}
liangbiao_lists = document['querySelectorAll']("#div" + gg++ + ' tbody tr[tp="d"]');
liangbiao_index = 0;
for (let i = 0; i < liangbiao_lists['length']; i++) {
    ops = liangbiao_lists[liangbiao_index]['querySelectorAll']('td a');
    liangbiao_index += 1;
    ops[danxuan(bili)]["click"]();
}
