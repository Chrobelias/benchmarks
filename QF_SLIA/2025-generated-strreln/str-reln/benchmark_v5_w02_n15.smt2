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

(assert (str.in_re x (re.* (re.union (str.to_re "335") (str.to_re "13")))))
(assert (str.in_re y (re.* (re.union (re.* (str.to_re "362")) (re.+ (str.to_re "9"))))))
(assert (str.in_re z (re.* (str.to_re "808"))))
(assert (str.in_re a (re.union (str.to_re "3") (re.++ (re.* (str.to_re "788")) (str.to_re "410")))))
(assert (str.in_re b (re.* (re.union (str.to_re "800") (re.+ (re.+ (str.to_re "193")))))))

(assert (< (+ (- (str.len x)) (* 7 (str.len a)) (* 4 (str.len b)) (* 3 (str.to_int a)) (* 9 (str.to_int b))) 69))

(check-sat)