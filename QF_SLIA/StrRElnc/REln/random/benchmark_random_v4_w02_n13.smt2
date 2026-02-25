(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re z (re.union (re.* (str.to_re "71")) (re.range "0" "9"))))
(assert (str.in_re y (re.* (re.++ (str.to_re "328") (re.union (re.+ (str.to_re "886")) (str.to_re "75"))))))
(assert (str.in_re a (re.++ (re.union (re.+ (str.to_re "21")) (str.to_re "660")) (re.+ (str.to_re "300")))))
(assert (str.in_re x (re.union (re.++ (str.to_re "594") (str.to_re "95")) (re.+ (str.to_re "56")))))

(assert (>= (+ (* (- 8) (str.to_int x)) (* 6 (str.to_int y)) (* 7 (str.to_int z)) (* (- 3) (str.to_int a))) 71))
(assert (>= (+ (* 9 (str.len x)) (* 8 (str.len y)) (* (- 2) (str.len z)) (* (- 5) (str.len a))) 44))

(check-sat)