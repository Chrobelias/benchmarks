(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re z (re.+ (re.++ (str.to_re "74") (re.+ (re.* (re.range "7" "9")))))))
(assert (str.in_re y (re.* (re.* (re.union (re.* (str.to_re "417")) (str.to_re "375"))))))
(assert (str.in_re x (re.++ (re.* (re.range "4" "6")) (re.++ (str.to_re "90") (str.to_re "519")))))

(assert (> (+ (* 6 (str.len x)) (* 10 (str.len y)) (* 9 (str.len z))) 3))
(assert (= (+ (* 9 (str.to_int x)) (* 7 (str.to_int y)) (* (- 2) (str.to_int z))) 78))
(assert (= (+ (str.to_int x) (* 7 (str.to_int y)) (* (- 10) (str.to_int z))) 37))

(check-sat)