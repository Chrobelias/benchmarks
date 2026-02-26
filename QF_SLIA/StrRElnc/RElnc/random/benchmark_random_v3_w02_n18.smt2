(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ y x) (str.++ z "76")))

(assert (str.in_re z (re.union (str.to_re "44") (re.* (re.++ (str.to_re "826") (str.to_re "2"))))))
(assert (str.in_re x (re.++ (re.++ (re.+ (str.to_re "7")) (re.* (str.to_re "4"))) (re.range "5" "8"))))
(assert (str.in_re y (re.* (re.union (re.union (re.range "5" "8") (re.+ (re.range "6" "8"))) (re.range "3" "9")))))

(assert (> (+ (* 6 (str.to_int x)) (* 4 (str.to_int y)) (* 9 (str.to_int z))) 50))
(assert (> (+ (* 7 (str.len x)) (* (- 3) (str.len y)) (* (- 6) (str.len z))) 95))

(check-sat)