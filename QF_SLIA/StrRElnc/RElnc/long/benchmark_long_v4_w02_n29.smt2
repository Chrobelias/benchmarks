(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (>= (str.len a) 1000))
(assert (>= (str.len y) 1000))

(assert (= (str.++ y z) (str.++ "44" a x)))

(assert (str.in_re x (re.union (str.to_re "8") (re.union (str.to_re "8") (re.* (re.+ (re.range "2" "8")))))))
(assert (str.in_re a (re.union (str.to_re "252") (re.union (re.range "2" "7") (re.union (re.* (re.range "7" "9")) (str.to_re "41"))))))
(assert (str.in_re y (re.++ (re.union (str.to_re "4") (str.to_re "198")) (re.* (str.to_re "787")))))
(assert (str.in_re z (re.+ (re.+ (re.++ (str.to_re "48") (re.* (str.to_re "906")))))))

(assert (< (+ (* 9 (str.len x)) (* (- 10) (str.len y)) (* 3 (str.len z)) (* (- 2) (str.len a))) 56))
(assert (= (+ (* (- 4) (str.to_int x)) (* (- 4) (str.to_int y)) (* 2 (str.to_int z)) (* 2 (str.to_int a))) 31))

(check-sat)