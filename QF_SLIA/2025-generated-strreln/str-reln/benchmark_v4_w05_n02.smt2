(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.+ (re.union (re.* (str.to_re "128")) (str.to_re "513")))))
(assert (str.in_re y (re.++ (re.range "0" "2") (re.* (re.+ (str.to_re "634"))))))
(assert (str.in_re z (re.union (re.union (str.to_re "4") (re.* (str.to_re "91"))) (str.to_re "530"))))
(assert (str.in_re a (re.* (re.++ (re.union (re.+ (str.to_re "341")) (str.to_re "4")) (str.to_re "307")))))

(assert (<= (+ (- (str.len x)) (* 4 (str.len y)) (* (- 10) (str.len z)) (* 10 (str.len a))) 56))
(assert (< (+ (* 7 (str.len x)) (* (- 10) (str.to_int a))) 85))
(assert (< (+ (* 5 (str.to_int x)) (* 9 (str.to_int z)) (* 9 (str.to_int a))) 56))
(assert (>= (+ (* (- 9) (str.len x)) (* (- 5) (str.len y)) (* 6 (str.len z)) (* 5 (str.len a))) 87))

(check-sat)