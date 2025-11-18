(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.++ (re.+ (re.union (re.* (re.range "6" "9")) (re.range "4" "7"))) (str.to_re "148"))))
(assert (str.in_re y (re.++ (str.to_re "19") (re.union (re.* (str.to_re "8")) (re.range "0" "3")))))
(assert (str.in_re z (re.union (str.to_re "554") (re.* (re.++ (str.to_re "65") (str.to_re "517"))))))

(assert (<= (+ (* 9 (str.to_int x)) (* 3 (str.to_int y)) (* (- 4) (str.to_int z))) 61))
(assert (> (+ (* 10 (str.len x)) (* (- 3) (str.len y)) (* 3 (str.len z))) 99))
(assert (< (+ (* (- 9) (str.len x)) (* (- 9) (str.len y)) (* (- 8) (str.len z))) 62))
(assert (>= (+ (* 4 (str.len x)) (* 6 (str.len y)) (* (- 7) (str.len z))) 79))
(assert (< (+ (* 6 (str.to_int x)) (* (- 10) (str.to_int y)) (* 5 (str.to_int z))) 32))

(check-sat)