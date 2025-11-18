(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.* (re.* (re.* (str.to_re "63"))))))
(assert (str.in_re y (re.union (str.to_re "547") (re.union (str.to_re "56") (re.* (re.range "7" "9"))))))
(assert (str.in_re z (re.union (re.+ (re.union (re.range "5" "9") (str.to_re "63"))) (str.to_re "400"))))
(assert (str.in_re a (re.++ (re.* (re.range "6" "9")) (re.++ (str.to_re "5") (str.to_re "114")))))

(assert (<= (+ (* 9 (str.to_int x)) (* (- 3) (str.to_int y)) (* 10 (str.to_int z)) (str.to_int a)) 99))
(assert (> (+ (* (- 8) (str.to_int x)) (* (- 10) (str.to_int y)) (* 3 (str.to_int z)) (* 3 (str.to_int a))) 58))
(assert (>= (+ (* (- 6) (str.len y)) (* 6 (str.len a)) (* 9 (str.to_int z))) 16))
(assert (< (+ (* (- 8) (str.len z)) (* (- 3) (str.to_int x))) 57))

(check-sat)