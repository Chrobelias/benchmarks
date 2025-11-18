(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)
(declare-const b String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))
(assert (>= (str.to_int b) 0))

(assert (str.in_re x (re.++ (re.+ (str.to_re "6")) (str.to_re "238"))))
(assert (str.in_re y (re.union (re.+ (str.to_re "58")) (str.to_re "622"))))
(assert (str.in_re z (re.* (re.union (re.++ (re.* (str.to_re "57")) (str.to_re "299")) (re.range "0" "5")))))
(assert (str.in_re a (re.union (str.to_re "42") (re.++ (re.range "7" "9") (re.* (str.to_re "48"))))))
(assert (str.in_re b (re.++ (re.++ (str.to_re "41") (re.+ (str.to_re "581"))) (str.to_re "15"))))

(assert (>= (+ (* 10 (str.len a)) (* (- 10) (str.to_int x)) (* (- 2) (str.to_int z))) 59))
(assert (> (+ (* (- 10) (str.len x)) (* (- 2) (str.len y)) (* 5 (str.len z)) (* 5 (str.len a)) (* (- 7) (str.len b))) 97))
(assert (<= (+ (* 8 (str.len x)) (* 9 (str.len y)) (* (- 6) (str.len z)) (* (- 5) (str.len a)) (* (- 5) (str.len b))) 21))
(assert (<= (+ (* 2 (str.len x)) (* (- 2) (str.len y)) (* (- 5) (str.len z)) (* 4 (str.len a)) (* 4 (str.len b))) 45))
(assert (>= (+ (* 9 (str.len x)) (* 2 (str.len y)) (* 2 (str.len z)) (* (- 8) (str.len a)) (* (- 2) (str.len b))) 38))

(check-sat)