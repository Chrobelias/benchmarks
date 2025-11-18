(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.union (re.* (re.+ (str.to_re "55"))) (re.* (str.to_re "56")))))
(assert (str.in_re y (re.union (re.* (str.to_re "429")) (re.union (str.to_re "757") (str.to_re "24")))))
(assert (str.in_re z (re.union (re.* (re.+ (str.to_re "9"))) (re.* (re.range "0" "8")))))
(assert (str.in_re a (re.union (re.* (re.++ (re.+ (str.to_re "49")) (str.to_re "57"))) (str.to_re "75"))))

(assert (>= (+ (* 2 (str.len a)) (* (- 7) (str.to_int z)) (* (- 9) (str.to_int a))) 16))

(check-sat)