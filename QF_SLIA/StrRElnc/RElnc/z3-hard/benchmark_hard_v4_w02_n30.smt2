(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= y (str.++ "87" z a "41" x "55")))

(assert (str.in_re a (re.union (re.union (re.++ (str.to_re "350") (re.* (str.to_re "4"))) (str.to_re "298")) (str.to_re "710"))))
(assert (str.in_re x (re.union (str.to_re "75") (re.union (re.* (str.to_re "386")) (str.to_re "630")))))
(assert (str.in_re y (re.+ (re.union (str.to_re "757") (re.++ (re.range "6" "9") (re.* (re.range "0" "9")))))))
(assert (str.in_re z (re.+ (re.union (re.++ (str.to_re "8") (str.to_re "55")) (str.to_re "462")))))

(assert (= (+ (* 4 (str.len a)) (* 6 (str.to_int x)) (* (- 10) (str.to_int y)) (* 7 (str.to_int z))) 50))

(check-sat)